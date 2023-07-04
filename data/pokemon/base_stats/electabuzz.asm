if DEF(FAITHFUL)
	db  65,  83,  57, 105,  95,  85 ; 490 BST
	;   hp  atk  def  spd  sat  sdf
else
	db  65,  93,  57, 105,  95,  85 ; 500 BST
	;   hp  atk  def  spd  sat  sdf
endc

if DEF(FAITHFUL)
	db ELECTRIC, ELECTRIC ; type
else
	db ELECTRIC, FIGHTING ; type
endc
	db 45 ; catch rate
	db 156 ; base exp
	db PERSIM_BERRY ; item 1
	db ELECTIRIZER ; item 2
	dn GENDER_F25, 4 ; gender ratio, step cycles to hatch
	INCBIN "gfx/pokemon/electabuzz/front.dimensions"
	abilities_for ELECTABUZZ, IRON_FIST, STATIC, VITAL_SPIRIT
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	ev_yield   0,   0,   0,   2,   0,   0
	;         hp  atk  def  spd  sat  sdf

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, BULK_UP, HIDDEN_POWER, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, PSYCHIC, ROCK_SMASH, DOUBLE_TEAM, SWIFT, SUBSTITUTE, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, WILD_CHARGE, GIGA_IMPACT, FLASH, VOLT_SWITCH, THUNDER_WAVE, STRENGTH, BODY_SLAM, COUNTER, DOUBLE_EDGE, ENDURE, FIRE_PUNCH, HEADBUTT, ICE_PUNCH, SEISMIC_TOSS, SLEEP_TALK, SWAGGER, THUNDERPUNCH, ZAP_CANNON
	; end
