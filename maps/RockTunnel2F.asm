RockTunnel2F_MapScriptHeader:

.MapTriggers: db 0

.MapCallbacks: db 0

RockTunnel2F_MapEventHeader:

.Warps: db 2
	warp_def $13, $19, 3, ROUTE_10_NORTH
	warp_def $f, $7, 8, ROCK_TUNNEL_1F

.XYTriggers: db 0

.Signposts: db 2
	signpost 19, 15, SIGNPOST_JUMPTEXT, MapRockTunnel2FLodestoneText
	signpost 23, 10, SIGNPOST_ITEM, RockTunnel2FHiddenMaxEther

.PersonEvents: db 15
	person_event SPRITE_BALL_CUT_FRUIT, 12, 8, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, RockTunnel2FElectrode, EVENT_ROCK_TUNNEL_2F_ELECTRODE
	person_event SPRITE_BALL_CUT_FRUIT, 23, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, THUNDERSTONE, 1, EVENT_ROCK_TUNNEL_2F_THUNDERSTONE
	person_event SPRITE_BALL_CUT_FRUIT, 9, 25, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_TMHMBALL, 0, TM_THUNDER_WAVE, EVENT_ROCK_TUNNEL_2F_TM_THUNDER_WAVE
	person_event SPRITE_BALL_CUT_FRUIT, 3, 21, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_ITEMBALL, 0, ELECTIRIZER, 1, EVENT_ROCK_TUNNEL_2F_ELECTIRIZER
	person_event SPRITE_ROCK_BOULDER_FOSSIL, 2, 12, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumpstd, strengthboulder, 0, -1
	person_event SPRITE_ROCK_BOULDER_FOSSIL, 3, 12, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumpstd, strengthboulder, 0, -1
	person_event SPRITE_ROCK_BOULDER_FOSSIL, 3, 13, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumpstd, strengthboulder, 0, -1
	person_event SPRITE_SNES, 5, 1, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_TREE, PERSONTYPE_SCRIPT, 0, EndEvent, -1
	person_event SPRITE_SNES, 19, 1, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_TREE, PERSONTYPE_SCRIPT, 0, EndEvent, -1
	person_event SPRITE_SNES, 9, 13, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_TREE, PERSONTYPE_SCRIPT, 0, EndEvent, -1
	person_event SPRITE_SNES, 18, 13, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_TREE, PERSONTYPE_SCRIPT, 0, EndEvent, -1
	person_event SPRITE_SNES, 6, 16, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_TREE, PERSONTYPE_SCRIPT, 0, EndEvent, -1
	person_event SPRITE_SNES, 13, 18, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_TREE, PERSONTYPE_SCRIPT, 0, EndEvent, -1
	person_event SPRITE_SNES, 15, 28, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_TREE, PERSONTYPE_SCRIPT, 0, EndEvent, -1
	person_event SPRITE_SNES, 22, 22, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_TREE, PERSONTYPE_SCRIPT, 0, EndEvent, -1

RockTunnel2FElectrode:
	cry ELECTRODE
	loadwildmon ELECTRODE, 50
	startbattle
	disappear LAST_TALKED
	reloadmapafterbattle
	end

RockTunnel2FHiddenMaxEther:
	dwb EVENT_ROCK_TUNNEL_2F_HIDDEN_MAX_ETHER, MAX_ETHER

MapRockTunnel2FLodestoneText:
	text "The lodestone is"
	line "smooth and warm."

	para "It has a faint"
	line "aura of static."
	done
