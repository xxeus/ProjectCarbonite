exarkun = Creature:new {
	objectName = "",
	customName = "Exar Kun",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 500,
	chanceHit = 300,
	damageMin = 1500,
	damageMax = 2800,
	baseXp = 50000,
	baseHAM = 2600000,
	baseHAMmax = 3600000,
	armor = 3,
	resists = {85,85,85,85,85,85,85,85,75},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/exar_kun.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 4500000,
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 4500000,
		},
		{
			groups = {
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 4500000,
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000},
			},
			lootChance = 4500000,
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000},
			},
			lootChance = 4500000,
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000},
			},
			lootChance = 4500000,
		},
		{
			groups = {
				{group = "krayt_tissue_rare", chance = 10000000},
			},
			lootChance = 2500000,
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "holocron_dark", chance = 5000000},
			},
			lootChance = 2500000,
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "holocron_dark", chance = 5000000},
			},
			lootChance = 2500000,
		},
		{
			groups = {
				{group = "holocron_dark", chance = 5000000},
				{group = "armor_attachments", chance = 5000000},
			},
			lootChance = 2500000,
		},
		{
			groups = {
				{group = "holocron_dark", chance = 5000000},
				{group = "armor_attachments", chance = 5000000},
			},
			lootChance = 2500000,
		},
		-- look for some unique furniture to have drop too
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(exarkun, "exarkun")
