-- Path of Building
--
-- Intelligence support gems
-- Skill gem data (c) Grinding Gear Games
--
local gems = ...

gems["Added Chaos Damage"] = {
	intelligence = true,
	support = true,
	chaos = true,
	require = "hit",
	base = {
		manaCostMore = 1.3,
	},
	quality = {
		chaosInc = 0.5,
	},
	levels = {
		[1] = { chaosMin = 18, chaosMax = 26, },
		[2] = { chaosMin = 21, chaosMax = 32, },
		[3] = { chaosMin = 24, chaosMax = 36, },
		[4] = { chaosMin = 27, chaosMax = 41, },
		[5] = { chaosMin = 31, chaosMax = 46, },
		[6] = { chaosMin = 35, chaosMax = 52, },
		[7] = { chaosMin = 39, chaosMax = 59, },
		[8] = { chaosMin = 44, chaosMax = 67, },
		[9] = { chaosMin = 50, chaosMax = 75, },
		[10] = { chaosMin = 56, chaosMax = 84, },
		[11] = { chaosMin = 63, chaosMax = 94, },
		[12] = { chaosMin = 71, chaosMax = 106, },
		[13] = { chaosMin = 79, chaosMax = 118, },
		[14] = { chaosMin = 88, chaosMax = 132, },
		[15] = { chaosMin = 99, chaosMax = 148, },
		[16] = { chaosMin = 110, chaosMax = 165, },
		[17] = { chaosMin = 123, chaosMax = 185, },
		[18] = { chaosMin = 137, chaosMax = 206, },
		[19] = { chaosMin = 153, chaosMax = 229, },
		[20] = { chaosMin = 170, chaosMax = 256, },
		[21] = { chaosMin = 190, chaosMax = 284, },
		[22] = { chaosMin = 211, chaosMax = 316, },
		[23] = { chaosMin = 234, chaosMax = 352, },
		[24] = { chaosMin = 260, chaosMax = 391, },
		[25] = { chaosMin = 289, chaosMax = 434, },
		[26] = { chaosMin = 321, chaosMax = 482, },
		[27] = { chaosMin = 356, chaosMax = 534, },
		[28] = { chaosMin = 395, chaosMax = 592, },
		[29] = { chaosMin = 438, chaosMax = 657, },
		[30] = { chaosMin = 485, chaosMax = 728, },
	}
}
gems["Added Lightning Damage"] = {
	intelligence = true,
	support = true,
	lightning = true,
	require = "hit",
	base = {
		manaCostMore = 1.3,
	},
	quality = {
		lightningInc = 0.5,
	},
	levels = {
		[1] = { lightningMin = 1, lightningMax = 8, },
		[2] = { lightningMin = 1, lightningMax = 9, },
		[3] = { lightningMin = 1, lightningMax = 12, },
		[4] = { lightningMin = 1, lightningMax = 16, },
		[5] = { lightningMin = 1, lightningMax = 22, },
		[6] = { lightningMin = 1, lightningMax = 28, },
		[7] = { lightningMin = 2, lightningMax = 36, },
		[8] = { lightningMin = 2, lightningMax = 47, },
		[9] = { lightningMin = 3, lightningMax = 59, },
		[10] = { lightningMin = 4, lightningMax = 70, },
		[11] = { lightningMin = 4, lightningMax = 83, },
		[12] = { lightningMin = 5, lightningMax = 98, },
		[13] = { lightningMin = 6, lightningMax = 116, },
		[14] = { lightningMin = 7, lightningMax = 136, },
		[15] = { lightningMin = 8, lightningMax = 159, },
		[16] = { lightningMin = 10, lightningMax = 186, },
		[17] = { lightningMin = 11, lightningMax = 218, },
		[18] = { lightningMin = 13, lightningMax = 253, },
		[19] = { lightningMin = 16, lightningMax = 295, },
		[20] = { lightningMin = 18, lightningMax = 342, },
		[21] = { lightningMin = 20, lightningMax = 378, },
		[22] = { lightningMin = 22, lightningMax = 417, },
		[23] = { lightningMin = 24, lightningMax = 459, },
		[24] = { lightningMin = 27, lightningMax = 506, },
		[25] = { lightningMin = 29, lightningMax = 557, },
		[26] = { lightningMin = 32, lightningMax = 614, },
		[27] = { lightningMin = 36, lightningMax = 675, },
		[28] = { lightningMin = 39, lightningMax = 743, },
		[29] = { lightningMin = 43, lightningMax = 816, },
		[30] = { lightningMin = 47, lightningMax = 897, },
	}
}
gems["Blasphemy"] = {
	intelligence = true,
	support = true,
	curse = true,
	aura = true,
	require = "curse",
	base = {
		skill_manaReservedPercent = 35,
	},
	quality = {
		curseEffectInc = 0.5,
	},
	levels = {
		[1] = { curse_aoeRadiusInc = 0, },
		[2] = { curse_aoeRadiusInc = 2, },
		[3] = { curse_aoeRadiusInc = 4, },
		[4] = { curse_aoeRadiusInc = 6, },
		[5] = { curse_aoeRadiusInc = 8, },
		[6] = { curse_aoeRadiusInc = 10, },
		[7] = { curse_aoeRadiusInc = 12, },
		[8] = { curse_aoeRadiusInc = 14, },
		[9] = { curse_aoeRadiusInc = 16, },
		[10] = { curse_aoeRadiusInc = 18, },
		[11] = { curse_aoeRadiusInc = 20, },
		[12] = { curse_aoeRadiusInc = 22, },
		[13] = { curse_aoeRadiusInc = 24, },
		[14] = { curse_aoeRadiusInc = 26, },
		[15] = { curse_aoeRadiusInc = 28, },
		[16] = { curse_aoeRadiusInc = 30, },
		[17] = { curse_aoeRadiusInc = 32, },
		[18] = { curse_aoeRadiusInc = 34, },
		[19] = { curse_aoeRadiusInc = 36, },
		[20] = { curse_aoeRadiusInc = 38, },
		[21] = { curse_aoeRadiusInc = 40, },
		[22] = { curse_aoeRadiusInc = 42, },
		[23] = { curse_aoeRadiusInc = 44, },
		[24] = { curse_aoeRadiusInc = 46, },
		[25] = { curse_aoeRadiusInc = 48, },
		[26] = { curse_aoeRadiusInc = 50, },
		[27] = { curse_aoeRadiusInc = 52, },
		[28] = { curse_aoeRadiusInc = 54, },
		[29] = { curse_aoeRadiusInc = 56, },
		[30] = { curse_aoeRadiusInc = 58, },
	}
}
gems["Cast when Stunned"] = {
	intelligence = true,
	support = true,
	spell = true,
	trigger = true,
	require = "spell",
	base = {
	},
	quality = {
		damageInc = 0.5,
	},
	levels = {
		[1] = { },
		[2] = { },
		[3] = { },
		[4] = { },
		[5] = { },
		[6] = { },
		[7] = { },
		[8] = { },
		[9] = { },
		[10] = { },
		[11] = { },
		[12] = { },
		[13] = { },
		[14] = { },
		[15] = { },
		[16] = { },
		[17] = { },
		[18] = { },
		[19] = { },
		[20] = { },
		[21] = { },
		[22] = { },
		[23] = { },
		[24] = { },
		[25] = { },
		[26] = { },
		[27] = { },
		[28] = { },
		[29] = { },
		[30] = { },
	}
}
gems["Chance to Ignite"] = {
	intelligence = true,
	support = true,
	fire = true,
	require = "hit",
	base = {
		manaCostMore = 1.1,
	},
	quality = {
		dot_fireInc = 0.5,
	},
	levels = {
		[1] = { igniteChance = 30, },
		[2] = { igniteChance = 31, },
		[3] = { igniteChance = 32, },
		[4] = { igniteChance = 33, },
		[5] = { igniteChance = 34, },
		[6] = { igniteChance = 35, },
		[7] = { igniteChance = 36, },
		[8] = { igniteChance = 37, },
		[9] = { igniteChance = 38, },
		[10] = { igniteChance = 39, },
		[11] = { igniteChance = 40, },
		[12] = { igniteChance = 41, },
		[13] = { igniteChance = 42, },
		[14] = { igniteChance = 43, },
		[15] = { igniteChance = 44, },
		[16] = { igniteChance = 45, },
		[17] = { igniteChance = 46, },
		[18] = { igniteChance = 47, },
		[19] = { igniteChance = 48, },
		[20] = { igniteChance = 49, },
		[21] = { igniteChance = 50, },
		[22] = { igniteChance = 51, },
		[23] = { igniteChance = 52, },
		[24] = { igniteChance = 53, },
		[25] = { igniteChance = 54, },
		[26] = { igniteChance = 55, },
		[27] = { igniteChance = 56, },
		[28] = { igniteChance = 57, },
		[29] = { igniteChance = 58, },
		[30] = { igniteChance = 59, },
	}
}
gems["Concentrated Effect"] = {
	intelligence = true,
	support = true,
	aoe = true,
	require = "aoe",
	base = {
		manaCostMore = 1.4,
		aoeRadiusMore = 0.75,
	},
	quality = {
		aoe_damageInc = 0.5,
	},
	levels = {
		[1] = { aoe_damageMore = 1.4, },
		[2] = { aoe_damageMore = 1.41, },
		[3] = { aoe_damageMore = 1.42, },
		[4] = { aoe_damageMore = 1.43, },
		[5] = { aoe_damageMore = 1.44, },
		[6] = { aoe_damageMore = 1.45, },
		[7] = { aoe_damageMore = 1.46, },
		[8] = { aoe_damageMore = 1.47, },
		[9] = { aoe_damageMore = 1.48, },
		[10] = { aoe_damageMore = 1.49, },
		[11] = { aoe_damageMore = 1.5, },
		[12] = { aoe_damageMore = 1.51, },
		[13] = { aoe_damageMore = 1.52, },
		[14] = { aoe_damageMore = 1.53, },
		[15] = { aoe_damageMore = 1.54, },
		[16] = { aoe_damageMore = 1.55, },
		[17] = { aoe_damageMore = 1.56, },
		[18] = { aoe_damageMore = 1.57, },
		[19] = { aoe_damageMore = 1.58, },
		[20] = { aoe_damageMore = 1.59, },
		[21] = { aoe_damageMore = 1.6, },
		[22] = { aoe_damageMore = 1.61, },
		[23] = { aoe_damageMore = 1.62, },
		[24] = { aoe_damageMore = 1.63, },
		[25] = { aoe_damageMore = 1.64, },
		[26] = { aoe_damageMore = 1.65, },
		[27] = { aoe_damageMore = 1.66, },
		[28] = { aoe_damageMore = 1.67, },
		[29] = { aoe_damageMore = 1.68, },
		[30] = { aoe_damageMore = 1.69, },
	}
}
gems["Controlled Destruction"] = {
	intelligence = true,
	support = true,
	spell = true,
	require = "spell and damage",
	base = {
		manaCostMore = 1.3,
		critChanceInc = -100,
	},
	quality = {
		spell_damageInc = 0.5,
	},
	levels = {
		[1] = { spell_damageMore = 1.25, },
		[2] = { spell_damageMore = 1.26, },
		[3] = { spell_damageMore = 1.27, },
		[4] = { spell_damageMore = 1.28, },
		[5] = { spell_damageMore = 1.29, },
		[6] = { spell_damageMore = 1.3, },
		[7] = { spell_damageMore = 1.31, },
		[8] = { spell_damageMore = 1.32, },
		[9] = { spell_damageMore = 1.33, },
		[10] = { spell_damageMore = 1.34, },
		[11] = { spell_damageMore = 1.35, },
		[12] = { spell_damageMore = 1.36, },
		[13] = { spell_damageMore = 1.37, },
		[14] = { spell_damageMore = 1.38, },
		[15] = { spell_damageMore = 1.39, },
		[16] = { spell_damageMore = 1.4, },
		[17] = { spell_damageMore = 1.41, },
		[18] = { spell_damageMore = 1.42, },
		[19] = { spell_damageMore = 1.43, },
		[20] = { spell_damageMore = 1.44, },
		[21] = { spell_damageMore = 1.45, },
		[22] = { spell_damageMore = 1.46, },
		[23] = { spell_damageMore = 1.47, },
		[24] = { spell_damageMore = 1.48, },
		[25] = { spell_damageMore = 1.49, },
		[26] = { spell_damageMore = 1.5, },
		[27] = { spell_damageMore = 1.51, },
		[28] = { spell_damageMore = 1.52, },
		[29] = { spell_damageMore = 1.53, },
		[30] = { spell_damageMore = 1.54, },
	}
}
gems["Curse On Hit"] = {
	intelligence = true,
	support = true,
	trigger = true,
	curse = true,
	require = "curse or hit",
	base = {
	},
	quality = {
		curseEffectInc = 0.5,
	},
	levels = {
		[1] = { curse_durationInc = -50, },
		[2] = { curse_durationInc = -48, },
		[3] = { curse_durationInc = -46, },
		[4] = { curse_durationInc = -44, },
		[5] = { curse_durationInc = -42, },
		[6] = { curse_durationInc = -40, },
		[7] = { curse_durationInc = -38, },
		[8] = { curse_durationInc = -36, },
		[9] = { curse_durationInc = -34, },
		[10] = { curse_durationInc = -32, },
		[11] = { curse_durationInc = -30, },
		[12] = { curse_durationInc = -28, },
		[13] = { curse_durationInc = -26, },
		[14] = { curse_durationInc = -24, },
		[15] = { curse_durationInc = -22, },
		[16] = { curse_durationInc = -20, },
		[17] = { curse_durationInc = -18, },
		[18] = { curse_durationInc = -16, },
		[19] = { curse_durationInc = -14, },
		[20] = { curse_durationInc = -12, },
		[21] = { curse_durationInc = -10, },
		[22] = { curse_durationInc = -8, },
		[23] = { curse_durationInc = -6, },
		[24] = { curse_durationInc = -4, },
		[25] = { curse_durationInc = -2, },
		[26] = { curse_durationInc = -0, },
		[27] = { curse_durationInc = -2, },
		[28] = { curse_durationInc = -4, },
		[29] = { curse_durationInc = -6, },
		[30] = { curse_durationInc = -8, },
	}
}
gems["Elemental Focus"] = {
	intelligence = true,
	support = true,
	require = "damage",
	base = {
		manaCostMore = 1.3,
		cannotShock = true,
		cannotChill = true,
		cannotFreeze = true,
		cannotIgnite = true,
	},
	quality = {
		elementalInc = 0.5,
	},
	levels = {
		[1] = { elementalMore = 1.3, },
		[2] = { elementalMore = 1.31, },
		[3] = { elementalMore = 1.32, },
		[4] = { elementalMore = 1.33, },
		[5] = { elementalMore = 1.34, },
		[6] = { elementalMore = 1.35, },
		[7] = { elementalMore = 1.36, },
		[8] = { elementalMore = 1.37, },
		[9] = { elementalMore = 1.38, },
		[10] = { elementalMore = 1.39, },
		[11] = { elementalMore = 1.4, },
		[12] = { elementalMore = 1.41, },
		[13] = { elementalMore = 1.42, },
		[14] = { elementalMore = 1.43, },
		[15] = { elementalMore = 1.44, },
		[16] = { elementalMore = 1.45, },
		[17] = { elementalMore = 1.46, },
		[18] = { elementalMore = 1.47, },
		[19] = { elementalMore = 1.48, },
		[20] = { elementalMore = 1.49, },
		[21] = { elementalMore = 1.5, },
		[22] = { elementalMore = 1.51, },
		[23] = { elementalMore = 1.52, },
		[24] = { elementalMore = 1.53, },
		[25] = { elementalMore = 1.54, },
		[26] = { elementalMore = 1.55, },
		[27] = { elementalMore = 1.56, },
		[28] = { elementalMore = 1.57, },
		[29] = { elementalMore = 1.58, },
		[30] = { elementalMore = 1.59, },
	}
}
gems["Elemental Proliferation"] = {
	intelligence = true,
	support = true,
	aoe = true,
	fire = true,
	cold = true,
	lightning = true,
	require = "hit",
	base = {
		manaCostMore = 1.4,
	},
	quality = {
		ignite_durationInc = 0.5,
		chill_durationInc = 0.5,
		freeze_durationInc = 0.5,
		shock_durationInc = 0.5,
	},
	levels = {
		[1] = { damageMore = 0.7, },
		[2] = { damageMore = 0.7, },
		[3] = { damageMore = 0.71, },
		[4] = { damageMore = 0.71, },
		[5] = { damageMore = 0.72, },
		[6] = { damageMore = 0.72, },
		[7] = { damageMore = 0.73, },
		[8] = { damageMore = 0.73, },
		[9] = { damageMore = 0.74, },
		[10] = { damageMore = 0.74, },
		[11] = { damageMore = 0.75, },
		[12] = { damageMore = 0.75, },
		[13] = { damageMore = 0.76, },
		[14] = { damageMore = 0.76, },
		[15] = { damageMore = 0.77, },
		[16] = { damageMore = 0.77, },
		[17] = { damageMore = 0.78, },
		[18] = { damageMore = 0.78, },
		[19] = { damageMore = 0.79, },
		[20] = { damageMore = 0.79, },
		[21] = { damageMore = 0.8, },
		[22] = { damageMore = 0.8, },
		[23] = { damageMore = 0.81, },
		[24] = { damageMore = 0.81, },
		[25] = { damageMore = 0.82, },
		[26] = { damageMore = 0.82, },
		[27] = { damageMore = 0.83, },
		[28] = { damageMore = 0.83, },
		[29] = { damageMore = 0.84, },
		[30] = { damageMore = 0.84, },
	}
}
gems["Enlighten"] = {
	intelligence = true,
	support = true,
	base = {
	},
	quality = {
	},
	levels = {
		[1] = { manaCostMore = 1, },
		[2] = { manaCostMore = 0.96, },
		[3] = { manaCostMore = 0.92, },
		[4] = { manaCostMore = 0.88, },
		[5] = { manaCostMore = 0.84, },
		[6] = { manaCostMore = 0.8, },
		[7] = { manaCostMore = 0.76, },
		[8] = { manaCostMore = 0.72, },
		[9] = { manaCostMore = 0.68, },
		[10] = { manaCostMore = 0.64, },
	}
}
gems["Faster Casting"] = {
	intelligence = true,
	support = true,
	spell = true,
	require = "spell",
	base = {
		manaCostMore = 1.2,
	},
	quality = {
		castSpeedInc = 0.5,
	},
	levels = {
		[1] = { castSpeedInc = 20, },
		[2] = { castSpeedInc = 21, },
		[3] = { castSpeedInc = 22, },
		[4] = { castSpeedInc = 23, },
		[5] = { castSpeedInc = 24, },
		[6] = { castSpeedInc = 25, },
		[7] = { castSpeedInc = 26, },
		[8] = { castSpeedInc = 27, },
		[9] = { castSpeedInc = 28, },
		[10] = { castSpeedInc = 29, },
		[11] = { castSpeedInc = 30, },
		[12] = { castSpeedInc = 31, },
		[13] = { castSpeedInc = 32, },
		[14] = { castSpeedInc = 33, },
		[15] = { castSpeedInc = 34, },
		[16] = { castSpeedInc = 35, },
		[17] = { castSpeedInc = 36, },
		[18] = { castSpeedInc = 37, },
		[19] = { castSpeedInc = 38, },
		[20] = { castSpeedInc = 39, },
		[21] = { castSpeedInc = 40, },
		[22] = { castSpeedInc = 41, },
		[23] = { castSpeedInc = 42, },
		[24] = { castSpeedInc = 43, },
		[25] = { castSpeedInc = 44, },
		[26] = { castSpeedInc = 45, },
		[27] = { castSpeedInc = 46, },
		[28] = { castSpeedInc = 47, },
		[29] = { castSpeedInc = 48, },
		[30] = { castSpeedInc = 49, },
	}
}
gems["Increased Area of Effect"] = {
	intelligence = true,
	support = true,
	aoe = true,
	require = "aoe",
	base = {
		manaCostMore = 1.4,
	},
	quality = {
		aoe_damageInc = 0.5,
	},
	levels = {
		[1] = { aoeRadiusInc = 20, },
		[2] = { aoeRadiusInc = 21, },
		[3] = { aoeRadiusInc = 22, },
		[4] = { aoeRadiusInc = 23, },
		[5] = { aoeRadiusInc = 24, },
		[6] = { aoeRadiusInc = 25, },
		[7] = { aoeRadiusInc = 26, },
		[8] = { aoeRadiusInc = 27, },
		[9] = { aoeRadiusInc = 28, },
		[10] = { aoeRadiusInc = 29, },
		[11] = { aoeRadiusInc = 30, },
		[12] = { aoeRadiusInc = 31, },
		[13] = { aoeRadiusInc = 32, },
		[14] = { aoeRadiusInc = 33, },
		[15] = { aoeRadiusInc = 34, },
		[16] = { aoeRadiusInc = 35, },
		[17] = { aoeRadiusInc = 36, },
		[18] = { aoeRadiusInc = 37, },
		[19] = { aoeRadiusInc = 38, },
		[20] = { aoeRadiusInc = 39, },
		[21] = { aoeRadiusInc = 40, },
		[22] = { aoeRadiusInc = 41, },
		[23] = { aoeRadiusInc = 42, },
		[24] = { aoeRadiusInc = 43, },
		[25] = { aoeRadiusInc = 44, },
		[26] = { aoeRadiusInc = 45, },
		[27] = { aoeRadiusInc = 46, },
		[28] = { aoeRadiusInc = 47, },
		[29] = { aoeRadiusInc = 48, },
		[30] = { aoeRadiusInc = 49, },
	}
}
gems["Increased Critical Damage"] = {
	intelligence = true,
	support = true,
	require = "hit",
	base = {
		manaCostMore = 1.3,
	},
	quality = {
		critMultiplier = 0.5,
	},
	levels = {
		[1] = { critMultiplier = 75, },
		[2] = { critMultiplier = 76, },
		[3] = { critMultiplier = 78, },
		[4] = { critMultiplier = 79, },
		[5] = { critMultiplier = 81, },
		[6] = { critMultiplier = 82, },
		[7] = { critMultiplier = 84, },
		[8] = { critMultiplier = 85, },
		[9] = { critMultiplier = 87, },
		[10] = { critMultiplier = 88, },
		[11] = { critMultiplier = 90, },
		[12] = { critMultiplier = 91, },
		[13] = { critMultiplier = 93, },
		[14] = { critMultiplier = 94, },
		[15] = { critMultiplier = 96, },
		[16] = { critMultiplier = 97, },
		[17] = { critMultiplier = 99, },
		[18] = { critMultiplier = 100, },
		[19] = { critMultiplier = 102, },
		[20] = { critMultiplier = 103, },
		[21] = { critMultiplier = 105, },
		[22] = { critMultiplier = 106, },
		[23] = { critMultiplier = 108, },
		[24] = { critMultiplier = 109, },
		[25] = { critMultiplier = 111, },
		[26] = { critMultiplier = 112, },
		[27] = { critMultiplier = 114, },
		[28] = { critMultiplier = 115, },
		[29] = { critMultiplier = 117, },
		[30] = { critMultiplier = 118, },
	}
}
gems["Increased Critical Strikes"] = {
	intelligence = true,
	support = true,
	require = "hit",
	base = {
		manaCostMore = 1.15,
	},
	quality = {
		critChanceInc = 1,
	},
	levels = {
		[1] = { critChanceInc = 50, critChanceBase = 1, },
		[2] = { critChanceInc = 52, critChanceBase = 1, },
		[3] = { critChanceInc = 54, critChanceBase = 1.1, },
		[4] = { critChanceInc = 56, critChanceBase = 1.1, },
		[5] = { critChanceInc = 58, critChanceBase = 1.2, },
		[6] = { critChanceInc = 60, critChanceBase = 1.2, },
		[7] = { critChanceInc = 62, critChanceBase = 1.3, },
		[8] = { critChanceInc = 64, critChanceBase = 1.3, },
		[9] = { critChanceInc = 66, critChanceBase = 1.4, },
		[10] = { critChanceInc = 68, critChanceBase = 1.4, },
		[11] = { critChanceInc = 70, critChanceBase = 1.5, },
		[12] = { critChanceInc = 72, critChanceBase = 1.5, },
		[13] = { critChanceInc = 74, critChanceBase = 1.6, },
		[14] = { critChanceInc = 76, critChanceBase = 1.6, },
		[15] = { critChanceInc = 78, critChanceBase = 1.7, },
		[16] = { critChanceInc = 80, critChanceBase = 1.7, },
		[17] = { critChanceInc = 82, critChanceBase = 1.8, },
		[18] = { critChanceInc = 84, critChanceBase = 1.8, },
		[19] = { critChanceInc = 86, critChanceBase = 1.9, },
		[20] = { critChanceInc = 88, critChanceBase = 1.9, },
		[21] = { critChanceInc = 90, critChanceBase = 2, },
		[22] = { critChanceInc = 92, critChanceBase = 2, },
		[23] = { critChanceInc = 94, critChanceBase = 2.1, },
		[24] = { critChanceInc = 96, critChanceBase = 2.1, },
		[25] = { critChanceInc = 98, critChanceBase = 2.2, },
		[26] = { critChanceInc = 100, critChanceBase = 2.2, },
		[27] = { critChanceInc = 102, critChanceBase = 2.3, },
		[28] = { critChanceInc = 104, critChanceBase = 2.3, },
		[29] = { critChanceInc = 106, critChanceBase = 2.4, },
		[30] = { critChanceInc = 108, critChanceBase = 2.4, },
	}
}
gems["Innervate"] = {
	intelligence = true,
	support = true,
	lightning = true,
	require = "hit",
	base = {
		manaCostMore = 1.1,
		shockChance = 15,
	},
	quality = {
		shock_durationInc = 1.5,
	},
	levels = {
		[1] = { },
		[2] = { },
		[3] = { },
		[4] = { },
		[5] = { },
		[6] = { },
		[7] = { },
		[8] = { },
		[9] = { },
		[10] = { },
		[11] = { },
		[12] = { },
		[13] = { },
		[14] = { },
		[15] = { },
		[16] = { },
		[17] = { },
		[18] = { },
		[19] = { },
		[20] = { },
		[21] = { },
		[22] = { },
		[23] = { },
		[24] = { },
		[25] = { },
		[26] = { },
		[27] = { },
		[28] = { },
		[29] = { },
		[30] = { },
	}
}
gems["Item Rarity"] = {
	intelligence = true,
	support = true,
	require = "damage",
	base = {
	},
	quality = {
		lootRarityInc = 0.5,
	},
	levels = {
		[1] = { lootRarityInc = 40, },
		[2] = { lootRarityInc = 41, },
		[3] = { lootRarityInc = 42, },
		[4] = { lootRarityInc = 43, },
		[5] = { lootRarityInc = 44, },
		[6] = { lootRarityInc = 45, },
		[7] = { lootRarityInc = 46, },
		[8] = { lootRarityInc = 47, },
		[9] = { lootRarityInc = 48, },
		[10] = { lootRarityInc = 49, },
		[11] = { lootRarityInc = 50, },
		[12] = { lootRarityInc = 51, },
		[13] = { lootRarityInc = 52, },
		[14] = { lootRarityInc = 53, },
		[15] = { lootRarityInc = 54, },
		[16] = { lootRarityInc = 55, },
		[17] = { lootRarityInc = 56, },
		[18] = { lootRarityInc = 57, },
		[19] = { lootRarityInc = 58, },
		[20] = { lootRarityInc = 59, },
		[21] = { lootRarityInc = 60, },
		[22] = { lootRarityInc = 61, },
		[23] = { lootRarityInc = 62, },
		[24] = { lootRarityInc = 63, },
		[25] = { lootRarityInc = 64, },
		[26] = { lootRarityInc = 65, },
		[27] = { lootRarityInc = 66, },
		[28] = { lootRarityInc = 67, },
		[29] = { lootRarityInc = 68, },
		[30] = { lootRarityInc = 69, },
	}
}
gems["Lightning Penetration"] = {
	intelligence = true,
	support = true,
	lightning = true,
	require = "hit",
	base = {
		manaCostMore = 1.4,
	},
	quality = {
		lightningInc = 0.5,
	},
	levels = {
		[1] = { lightningPen = 18, },
		[2] = { lightningPen = 19, },
		[3] = { lightningPen = 20, },
		[4] = { lightningPen = 21, },
		[5] = { lightningPen = 22, },
		[6] = { lightningPen = 23, },
		[7] = { lightningPen = 24, },
		[8] = { lightningPen = 25, },
		[9] = { lightningPen = 26, },
		[10] = { lightningPen = 27, },
		[11] = { lightningPen = 28, },
		[12] = { lightningPen = 29, },
		[13] = { lightningPen = 30, },
		[14] = { lightningPen = 31, },
		[15] = { lightningPen = 32, },
		[16] = { lightningPen = 33, },
		[17] = { lightningPen = 34, },
		[18] = { lightningPen = 35, },
		[19] = { lightningPen = 36, },
		[20] = { lightningPen = 37, },
		[21] = { lightningPen = 38, },
		[22] = { lightningPen = 39, },
		[23] = { lightningPen = 40, },
		[24] = { lightningPen = 41, },
		[25] = { lightningPen = 42, },
		[26] = { lightningPen = 43, },
		[27] = { lightningPen = 44, },
		[28] = { lightningPen = 45, },
		[29] = { lightningPen = 46, },
		[30] = { lightningPen = 47, },
	}
}
gems["Minefield"] = {
	intelligence = true,
	support = true,
	mine = true,
	require = "mine",
	base = {
		manaCostMore = 1.6,
		activeMineLimit = 2,
	},
	quality = {
		mineDetonationRadiusInc = 1,
	},
	levels = {
		[1] = { damageMore = 0.6, },
		[2] = { damageMore = 0.61, },
		[3] = { damageMore = 0.62, },
		[4] = { damageMore = 0.63, },
		[5] = { damageMore = 0.64, },
		[6] = { damageMore = 0.65, },
		[7] = { damageMore = 0.66, },
		[8] = { damageMore = 0.67, },
		[9] = { damageMore = 0.68, },
		[10] = { damageMore = 0.69, },
		[11] = { damageMore = 0.7, },
		[12] = { damageMore = 0.71, },
		[13] = { damageMore = 0.72, },
		[14] = { damageMore = 0.73, },
		[15] = { damageMore = 0.74, },
		[16] = { damageMore = 0.75, },
		[17] = { damageMore = 0.76, },
		[18] = { damageMore = 0.77, },
		[19] = { damageMore = 0.78, },
		[20] = { damageMore = 0.79, },
		[21] = { damageMore = 0.8, },
		[22] = { damageMore = 0.81, },
		[23] = { damageMore = 0.82, },
		[24] = { damageMore = 0.83, },
		[25] = { damageMore = 0.84, },
		[26] = { damageMore = 0.85, },
		[27] = { damageMore = 0.86, },
		[28] = { damageMore = 0.87, },
		[29] = { damageMore = 0.88, },
		[30] = { damageMore = 0.89, },
	}
}
gems["Minion and Totem Elemental Resistance"] = {
	intelligence = true,
	unsupported = true,
}
gems["Minion Damage"] = {
	intelligence = true,
	unsupported = true,
}
gems["Minion Life"] = {
	intelligence = true,
	unsupported = true,
}
gems["Minion Speed"] = {
	intelligence = true,
	unsupported = true,
}
gems["Physical to Lightning"] = {
	intelligence = true,
	support = true,
	lightning = true,
	require = "hit",
	base = {
		manaCostMore = 1.1,
		physicalConvertTolightning = 50,
	},
	quality = {
		physicalInc = 0.5,
		lightningInc = 0.5,
	},
	levels = {
		[1] = { physicalGainAslightning = 10, },
		[2] = { physicalGainAslightning = 11, },
		[3] = { physicalGainAslightning = 12, },
		[4] = { physicalGainAslightning = 13, },
		[5] = { physicalGainAslightning = 14, },
		[6] = { physicalGainAslightning = 15, },
		[7] = { physicalGainAslightning = 16, },
		[8] = { physicalGainAslightning = 17, },
		[9] = { physicalGainAslightning = 18, },
		[10] = { physicalGainAslightning = 19, },
		[11] = { physicalGainAslightning = 20, },
		[12] = { physicalGainAslightning = 21, },
		[13] = { physicalGainAslightning = 22, },
		[14] = { physicalGainAslightning = 23, },
		[15] = { physicalGainAslightning = 24, },
		[16] = { physicalGainAslightning = 25, },
		[17] = { physicalGainAslightning = 26, },
		[18] = { physicalGainAslightning = 27, },
		[19] = { physicalGainAslightning = 28, },
		[20] = { physicalGainAslightning = 29, },
		[21] = { physicalGainAslightning = 30, },
		[22] = { physicalGainAslightning = 31, },
		[23] = { physicalGainAslightning = 32, },
		[24] = { physicalGainAslightning = 33, },
		[25] = { physicalGainAslightning = 34, },
		[26] = { physicalGainAslightning = 35, },
		[27] = { physicalGainAslightning = 36, },
		[28] = { physicalGainAslightning = 37, },
		[29] = { physicalGainAslightning = 38, },
		[30] = { physicalGainAslightning = 39, },
	}
}
gems["Power Charge On Critical"] = {
	intelligence = true,
	support = true,
	require = "hit",
	base = {
		manaCostMore = 1.1,
	},
	quality = {
		critChanceInc = 1,
	},
	levels = {
		[1] = { },
		[2] = { },
		[3] = { },
		[4] = { },
		[5] = { },
		[6] = { },
		[7] = { },
		[8] = { },
		[9] = { },
		[10] = { },
		[11] = { },
		[12] = { },
		[13] = { },
		[14] = { },
		[15] = { },
		[16] = { },
		[17] = { },
		[18] = { },
		[19] = { },
		[20] = { },
		[21] = { },
		[22] = { },
		[23] = { },
		[24] = { },
		[25] = { },
		[26] = { },
		[27] = { },
		[28] = { },
		[29] = { },
		[30] = { },
	}
}
gems["Remote Mine"] = {
	intelligence = true,
	support = true,
	mine = true,
	require = "spell or projectile",
	addFlags = {
		mine = true,
		showAverage = true,
	},
	base = {
		manaCostMore = 1.5,
	},
	quality = {
		mineLayingSpeedInc = 0.5,
	},
	levels = {
		[1] = { mineHit_damageMore = 1.3, },
		[2] = { mineHit_damageMore = 1.31, },
		[3] = { mineHit_damageMore = 1.32, },
		[4] = { mineHit_damageMore = 1.33, },
		[5] = { mineHit_damageMore = 1.34, },
		[6] = { mineHit_damageMore = 1.35, },
		[7] = { mineHit_damageMore = 1.36, },
		[8] = { mineHit_damageMore = 1.37, },
		[9] = { mineHit_damageMore = 1.38, },
		[10] = { mineHit_damageMore = 1.39, },
		[11] = { mineHit_damageMore = 1.4, },
		[12] = { mineHit_damageMore = 1.41, },
		[13] = { mineHit_damageMore = 1.42, },
		[14] = { mineHit_damageMore = 1.43, },
		[15] = { mineHit_damageMore = 1.44, },
		[16] = { mineHit_damageMore = 1.45, },
		[17] = { mineHit_damageMore = 1.46, },
		[18] = { mineHit_damageMore = 1.47, },
		[19] = { mineHit_damageMore = 1.48, },
		[20] = { mineHit_damageMore = 1.49, },
		[21] = { mineHit_damageMore = 1.5, },
		[22] = { mineHit_damageMore = 1.51, },
		[23] = { mineHit_damageMore = 1.52, },
		[24] = { mineHit_damageMore = 1.53, },
		[25] = { mineHit_damageMore = 1.54, },
		[26] = { mineHit_damageMore = 1.55, },
		[27] = { mineHit_damageMore = 1.56, },
		[28] = { mineHit_damageMore = 1.57, },
		[29] = { mineHit_damageMore = 1.58, },
		[30] = { mineHit_damageMore = 1.59, },
	}
}
gems["Spell Echo"] = {
	intelligence = true,
	support = true,
	spell = true,
	require = "spell",
	base = {
		manaCostMore = 1.4,
		spell_damageMore = 0.9,
	},
	quality = {
		spell_damageInc = 0.5,
	},
	levels = {
		[1] = { castSpeedMore = 1.51, },
		[2] = { castSpeedMore = 1.52, },
		[3] = { castSpeedMore = 1.53, },
		[4] = { castSpeedMore = 1.54, },
		[5] = { castSpeedMore = 1.55, },
		[6] = { castSpeedMore = 1.56, },
		[7] = { castSpeedMore = 1.57, },
		[8] = { castSpeedMore = 1.58, },
		[9] = { castSpeedMore = 1.59, },
		[10] = { castSpeedMore = 1.6, },
		[11] = { castSpeedMore = 1.61, },
		[12] = { castSpeedMore = 1.62, },
		[13] = { castSpeedMore = 1.63, },
		[14] = { castSpeedMore = 1.64, },
		[15] = { castSpeedMore = 1.65, },
		[16] = { castSpeedMore = 1.66, },
		[17] = { castSpeedMore = 1.67, },
		[18] = { castSpeedMore = 1.68, },
		[19] = { castSpeedMore = 1.69, },
		[20] = { castSpeedMore = 1.7, },
		[21] = { castSpeedMore = 1.71, },
		[22] = { castSpeedMore = 1.72, },
		[23] = { castSpeedMore = 1.73, },
		[24] = { castSpeedMore = 1.74, },
		[25] = { castSpeedMore = 1.75, },
		[26] = { castSpeedMore = 1.76, },
		[27] = { castSpeedMore = 1.77, },
		[28] = { castSpeedMore = 1.78, },
		[29] = { castSpeedMore = 1.79, },
		[30] = { castSpeedMore = 1.8, },
	}
}