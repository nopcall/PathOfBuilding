-- Path of Building
--
-- Class: Passive Tree
-- Passive skill tree class.
-- Responsible for downloading and loading the passive tree data and assets
-- Also pre-calculates and pre-parses most of the data need to use the passive tree, including the node modifiers
--
local launch, main = ...

local pairs = pairs
local ipairs = ipairs
local t_insert = table.insert
local m_min = math.min
local m_max = math.max
local m_pi = math.pi
local m_sin = math.sin
local m_cos = math.cos
local m_tan = math.tan
local m_sqrt = math.sqrt

-- Retrieve the file at the given URL
local function getFile(URL)
	local page = ""
	local easy = common.curl.easy()
	easy:setopt_url(URL)
	easy:setopt_writefunction(function(data)
		page = page..data
		return true
	end)
	easy:perform()
	easy:close()
	return #page > 0 and page
end

local PassiveTreeClass = common.NewClass("PassiveTree", function(self)
	MakeDir("TreeData")

	ConPrintf("Loading passive tree data...")
	local treeText
	local treeFile = io.open("TreeData/tree.lua", "r")
	if treeFile then
		treeText = treeFile:read("*a")
		treeFile:close()
	else
		ConPrintf("Downloading passive tree data...")
		local page
		local pageFile = io.open("TreeData/tree.txt", "r")
		if pageFile then
			page = pageFile:read("*a")
			pageFile:close()
		else
			page = getFile("https://www.pathofexile.com/passive-skill-tree/")
		end
		treeText = "local tree=" .. jsonToLua(page:match("var passiveSkillTreeData = (%b{})"))
		treeText = treeText .. "tree.classes=" .. jsonToLua(page:match("ascClasses: (%b{})"))
		treeText = treeText .. "return tree"
		treeFile = io.open("TreeData/tree.lua", "w")
		treeFile:write(treeText)
		treeFile:close()
	end
	for k, v in pairs(assert(loadstring(treeText))()) do
		self[k] = v
	end

	self.size = m_min(self.max_x - self.min_x, self.max_y - self.min_y) * 1.1

	-- Build maps of class name -> class table
	self.classNameMap = { }
	self.ascendNameMap = { }
	for classId, class in pairs(self.classes) do
		class.classes[0] = { name = "None" }
		self.classNameMap[class.name] = classId
		for ascendClassId, ascendClass in pairs(class.classes) do
			self.ascendNameMap[ascendClass.name] = {
				classId = classId,
				class = class,
				ascendClassId = ascendClassId,
				ascendClass = ascendClass
			}
		end
	end

	ConPrintf("Loading passive tree assets...")
	for name, data in pairs(self.assets) do
		local imgName = "TreeData/"..name..".png"
		self:CacheImage(imgName, data[0.3835] or data[1])
		data.handle = NewImageHandle()
		data.handle:Load(imgName)
		data.width, data.height = data.handle:ImageSize()
	end

	-- Load sprite sheets and build sprite map
	local spriteMap = { }
	local spriteSheets = { }
	for type, data in pairs(self.skillSprites) do
		local maxZoom = data[#data]
		local sheet = spriteSheets[maxZoom.filename]
		if not sheet then
			sheet = { }
			local imgName = "TreeData/"..maxZoom.filename
			self:CacheImage(imgName, self.imageRoot.."build-gen/passive-skill-sprite/"..maxZoom.filename)
			sheet.handle = NewImageHandle()
			sheet.handle:Load(imgName, "CLAMP")
			sheet.width, sheet.height = sheet.handle:ImageSize()
			spriteSheets[maxZoom.filename] = sheet
		end
		for name, coords in pairs(maxZoom.coords) do
			if not spriteMap[name] then
				spriteMap[name] = { }
			end
			spriteMap[name][type] = { 
				handle = sheet.handle,
				width = coords.w,
				height = coords.h,
				[1] = coords.x / sheet.width, 
				[2] = coords.y / sheet.height, 
				[3] = (coords.x + coords.w) / sheet.width,
				[4] = (coords.y + coords.h) / sheet.height
			}
		end
	end

	local classArt = {
		[0] = "centerscion",
		[1] = "centermarauder",
		[2] = "centerranger",
		[3] = "centerwitch",
		[4] = "centerduelist",
		[5] = "centertemplar",
		[6] = "centershadow"
	}
	local nodeOverlay = {
		normal = {
			alloc = "PSSkillFrameActive",
			path = "PSSkillFrameHighlighted",
			unalloc = "PSSkillFrame",
			allocAscend = "PassiveSkillScreenAscendancyFrameSmallAllocated",
			pathAscend = "PassiveSkillScreenAscendancyFrameSmallCanAllocate",
			unallocAscend = "PassiveSkillScreenAscendancyFrameSmallNormal"
		},
		notable = {
			alloc = "NotableFrameAllocated",
			path = "NotableFrameCanAllocate",
			unalloc = "NotableFrameUnallocated",
			allocAscend = "PassiveSkillScreenAscendancyFrameLargeAllocated",
			pathAscend = "PassiveSkillScreenAscendancyFrameLargeCanAllocate",
			unallocAscend = "PassiveSkillScreenAscendancyFrameLargeNormal"
		},
		keystone = { 
			alloc = "KeystoneFrameAllocated",
			path = "KeystoneFrameCanAllocate",
			unalloc = "KeystoneFrameUnallocated"
		},
		socket = {
			alloc = "JewelFrameAllocated",
			path = "JewelFrameCanAllocate",
			unalloc = "JewelFrameUnallocated"
		}
	}
	for type, data in pairs(nodeOverlay) do
		local size = self.assets[data.unalloc].width * 1.33
		data.size = size
		data.rsq = size * size
	end

	ConPrintf("Processing tree...")
	self.keystoneMap = { }
	local nodeMap = { }
	local orbitMult = { [0] = 0, m_pi / 3, m_pi / 6, m_pi / 6, m_pi / 20 }
	local orbitDist = { [0] = 0, 82, 162, 335, 493 }
	for _, node in pairs(self.nodes) do
		node.meta = { __index = node }
		nodeMap[node.id] = node
		node.linkedId = { }

		-- Determine node type
		if node.spc[0] then
			node.type = "classStart"
			local class = self.classes[node.spc[0]]
			class.startNodeId = node.id
			node.startArt = classArt[node.spc[0]]
		elseif node.isAscendancyStart then
			node.type = "ascendClassStart"
			local ascendClass = self.ascendNameMap[node.ascendancyName].ascendClass
			ascendClass.startNodeId = node.id
		elseif node.m then
			node.type = "mastery"
		elseif node.isJewelSocket then
			node.type = "socket"
		elseif node.ks then
			node.type = "keystone"
			self.keystoneMap[node.dn] = node
		elseif node["not"] then
			node.type = "notable"
		else
			node.type = "normal"
		end

		-- Assign node artwork assets
		node.sprites = spriteMap[node.icon]
		node.overlay = nodeOverlay[node.type]
		if node.overlay then
			node.rsq = node.overlay.rsq
			node.size = node.overlay.size
		end

		-- Find node group and derive the true position of the node
		local group = self.groups[node.g]
		group.ascendancyName = node.ascendancyName
		if node.isAscendancyStart then
			group.isAscendancyStart = true
		end
		node.group = group
		node.angle = node.oidx * orbitMult[node.o]
		local dist = orbitDist[node.o]
		node.x = group.x + m_sin(node.angle) * dist
		node.y = group.y - m_cos(node.angle) * dist

		-- Parse node modifier lines
		node.mods = { }
		node.modKey = ""
		local i = 1
		while node.sd[i] do
			local line = node.sd[i]
			local list, extra
			if line:match("\n") then
				-- There's a newline somewhere, so first try and parse it as a single line
				list, extra = modLib.parseMod(line:gsub("\n", " "))
				if list and not extra then
					node.sd[i] = line:gsub("\n", " ")
				else
					-- That failed, so break it into separate lines and try to parse them
					table.remove(node.sd, i)
					local si = i
					for subLine in line:gmatch("[^\n]+") do
						table.insert(node.sd, si, subLine)
						si = si + 1
					end
					list, extra = modLib.parseMod(node.sd[i])
				end
			else
				list, extra = modLib.parseMod(line)
			end
			if not list then
				-- Parser had no idea how to read this modifier
				node.unknown = true
			elseif extra then
				-- Parser recognised this as a modifier but couldn't understand all of it
				node.extra = true
			else
				for k, v in pairs(list) do
					node.modKey = node.modKey..k.."="..tostring(v)..","
				end
			end
			node.mods[i] = { list = list, extra = extra }
			i = i + 1
		end

		-- Build unified list of modifiers from all recognised modifier lines
		node.modList = { }
		for _, mod in pairs(node.mods) do
			if mod.list and not mod.extra then
				for k, v in pairs(mod.list) do
					modLib.listMerge(node.modList, k, v)
				end
			end
		end
		if node.type == "keystone" then
			modLib.listMerge(node.modList, "keystone:"..node.dn, true)
		end
		if node.passivePointsGranted > 0 then
			modLib.listMerge(node.modList, "extraPoints", node.passivePointsGranted)
		end
	end

	-- Pregenerate the polygons for the node connector lines
	self.connectors = { }
	for _, node in ipairs(self.nodes) do
		for _, otherId in pairs(node.out) do
			local other = nodeMap[otherId]
			t_insert(node.linkedId, otherId)
			t_insert(other.linkedId, node.id)
			if node.type ~= "classStart" and other.type ~= "classStart" and node.ascendancyName == other.ascendancyName then
				t_insert(self.connectors, self:BuildConnector(node, other))
			end
		end
	end
end)

-- Checks if a given image is present and downloads it from the given URL if it isn't there
function PassiveTreeClass:CacheImage(imgName, url)
	local imgFile = io.open(imgName, "r")
	if imgFile then
		imgFile:close()
	else
		ConPrintf("Downloading '%s'...", imgName)
		local data = getFile(url)
		if data then
			imgFile = io.open(imgName, "wb")
			imgFile:write(data)
			imgFile:close()
		else
			ConPrintf("Failed to download: %s", url)
		end
	end
end

-- Generate the quad used to render the line between the two given nodes
function PassiveTreeClass:BuildConnector(node1, node2)
	local connector = {
		ascendancyName = node1.ascendancyName,
		nodeId1 = node1.id,
		nodeId2 = node2.id,
		c = { } -- This array will contain the quad's data: 1-8 are the vertex coordinates, 9-16 are the texture coordinates
				-- Only the texture coords are filled in at this time; the vertex coords need to be converted from tree-space to screen-space first
				-- This will occur when the tree is being drawn; .vert will map line state (Normal/Intermediate/Active) to the correct tree-space coordinates 
	}
	if node1.g == node2.g and node1.o == node2.o then
		-- Nodes are in the same orbit of the same group, so generate an arc
		-- This is an arc texture mapped onto a kite-shaped quad
		connector.type = "Orbit" .. node1.o

		-- Calculate the starting angle (node1.angle) and arc angle
		if node1.angle > node2.angle then
			node1, node2 = node2, node1
		end
		local arcAngle = node2.angle - node1.angle
		if arcAngle > m_pi then
			node1, node2 = node2, node1
			arcAngle = m_pi * 2 - arcAngle
		end
		-- Calculate how much the arc needs to be clipped by
		-- Both ends of the arc will be clipped by this amount, so 90 degree arc angle = no clipping and 30 degree arc angle = 75 degrees of clipping
		-- The clipping is accomplished by effectively moving the bottom left and top right corners of the arc texture towards the top left corner
		-- The arc texture only shows 90 degrees of an arc, but some arcs must go for more than 90 degrees
		-- Fortunately there's nowhere on the tree where we can't just show the middle 90 degrees and rely on the node artwork to cover the gaps :)
		local clipAngle = m_pi / 4 - arcAngle / 2
		local p = 1 - m_max(m_tan(clipAngle), 0)
		local angle = node1.angle - clipAngle
		connector.vert = { }
		for _, state in pairs({"Normal","Intermediate","Active"}) do
			-- The different line states have differently-sized artwork, so the vertex coords must be calculated separately for each one
			local art = self.assets[connector.type..state]
			local size = art.width * 2 * 1.33
			local oX, oY = size * m_sqrt(2) * m_sin(angle + m_pi/4), size * m_sqrt(2) * -m_cos(angle + m_pi/4)
			local cX, cY = node1.group.x + oX, node1.group.y + oY
			local vert = { }
			vert[1], vert[2] = node1.group.x, node1.group.y
			vert[3], vert[4] = cX + (size * m_sin(angle) - oX) * p, cY + (size * -m_cos(angle) - oY) * p
			vert[5], vert[6] = cX, cY
			vert[7], vert[8] = cX + (size * m_cos(angle) - oX) * p, cY + (size * m_sin(angle) - oY) * p
			connector.vert[state] = vert
		end
		connector.c[9], connector.c[10] = 1, 1
		connector.c[11], connector.c[12] = 0, p
		connector.c[13], connector.c[14] = 0, 0
		connector.c[15], connector.c[16] = p, 0
	else
		-- Generate a straight line
		connector.type = "LineConnector"
		local art = self.assets.LineConnectorNormal
		local vX, vY = node2.x - node1.x, node2.y - node1.y
		local dist = m_sqrt(vX * vX + vY * vY)
		local scale = art.height * 1.33 / dist
		local nX, nY = vX * scale, vY * scale
		local endS = dist / (art.width * 1.33)
		connector[1], connector[2] = node1.x - nY, node1.y + nX
		connector[3], connector[4] = node1.x + nY, node1.y - nX
		connector[5], connector[6] = node2.x + nY, node2.y - nX
		connector[7], connector[8] = node2.x - nY, node2.y + nX
		connector.c[9], connector.c[10] = 0, 1
		connector.c[11], connector.c[12] = 0, 0
		connector.c[13], connector.c[14] = endS, 0
		connector.c[15], connector.c[16] = endS, 1
		connector.vert = { Normal = connector, Intermediate = connector, Active = connector }
	end
	return connector
end
