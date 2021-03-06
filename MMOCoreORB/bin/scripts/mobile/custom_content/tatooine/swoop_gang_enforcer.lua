swoop_gang_enforcer = Creature:new {
	customName = "a swoop gang enforcer",
	socialGroup = "thug",
	faction = "thug",
	level = 12,
	chanceHit = 0.64,
	damageMin = 90,
	damageMax = 145,
	baseXp = 87,
	baseHAM = 283,
	baseHAMmax = 458,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
				"object/mobile/dressed_criminal_thug_aqualish_female_01.iff",
				"object/mobile/dressed_criminal_thug_aqualish_female_02.iff",
				"object/mobile/dressed_criminal_thug_aqualish_male_01.iff",
				"object/mobile/dressed_criminal_thug_aqualish_male_02.iff",
				"object/mobile/dressed_criminal_thug_bothan_female_01.iff",
				"object/mobile/dressed_criminal_thug_bothan_male_01.iff",
				"object/mobile/dressed_criminal_thug_human_female_01.iff",
				"object/mobile/dressed_criminal_thug_human_male_01.iff",
				"object/mobile/dressed_criminal_thug_human_male_02.iff",
				"object/mobile/dressed_criminal_thug_rodian_female_01.iff",
				"object/mobile/dressed_criminal_thug_rodian_male_01.iff",
				"object/mobile/dressed_criminal_thug_trandoshan_female_01.iff",
				"object/mobile/dressed_criminal_thug_trandoshan_male_01.iff",
				"object/mobile/dressed_criminal_thug_zabrak_female_01.iff",
				"object/mobile/dressed_criminal_thug_zabrak_male_01.iff"
				},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(swoop_gang_enforcer, "swoop_gang_enforcer")
