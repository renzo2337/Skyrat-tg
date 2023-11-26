/mob/living/simple_animal/pet/crawler
	name = "crawler"
	desc = "RUN."
	icon = 'modular_tipos/master_files/icons/mob/simple/crawler.dmi'
	icon_state = "crawler"
	icon_living = "crawler"
	health = 500
	maxHealth = 500
	melee_damage_lower = 30
	melee_damage_upper = 50
	obj_damage = 40
	speed = 0.2
	environment_smash = ENVIRONMENT_SMASH_STRUCTURES
	lighting_cutoff = LIGHTING_CUTOFF_HIGH
	var/datum/looping_sound/terror_radius/soundloop

/datum/looping_sound/terror_radius
	mid_sounds = list('modular_tipos/master_files/sound/creatures/crawler/radius01.ogg' = 1,
						'modular_tipos/master_files/sound/creatures/crawler/radius02.ogg' = 1,
						'modular_tipos/master_files/sound/creatures/crawler/radius03.ogg' = 1,
						'modular_tipos/master_files/sound/creatures/crawler/radius04.ogg' = 1,
						'modular_tipos/master_files/sound/creatures/crawler/radius05.ogg' = 1,
						'modular_tipos/master_files/sound/creatures/crawler/radius06.ogg' = 1,
						'modular_tipos/master_files/sound/creatures/crawler/radius07.ogg' = 1,
						'modular_tipos/master_files/sound/creatures/crawler/radius08.ogg' = 1,
						'modular_tipos/master_files/sound/creatures/crawler/radius09.ogg' = 1,
						'modular_tipos/master_files/sound/creatures/crawler/radius10.ogg' = 1,
						'modular_tipos/master_files/sound/creatures/crawler/radius11.ogg' = 1,
						'modular_tipos/master_files/sound/creatures/crawler/radius12.ogg' = 1,
						'modular_tipos/master_files/sound/creatures/crawler/radius13.ogg' = 1)
	mid_length = 1 SECONDS
	in_order = TRUE
	each_once = TRUE
	volume = 100

/mob/living/simple_animal/pet/crawler/Initialize(mapload)
	. = ..()
	soundloop = new(src)

/mob/living/simple_animal/pet/crawler/Destroy()
	QDEL_NULL(soundloop)
	STOP_PROCESSING(SSprocessing, src)
	return ..()

/mob/living/simple_animal/pet/big_ass
	name = "bunker spider"
	desc = "That's a very big booty."
	icon = 'modular_tipos/master_files/icons/mob/simple/big_ass.dmi'
	icon_state = "bigass"
	icon_living = "bigass"
	health = 300
	maxHealth = 300
	melee_damage_lower = 20
	melee_damage_upper = 35
	obj_damage = 40
	speed = 0.2
	environment_smash = ENVIRONMENT_SMASH_STRUCTURES
	lighting_cutoff = LIGHTING_CUTOFF_HIGH

/mob/living/simple_animal/pet/phaser
	name = "phaser"
	desc = "Imagine running."
	icon = 'modular_tipos/master_files/icons/mob/simple/monster.dmi'
	icon_state = "phaser"
	icon_living = "phaser"
	icon_dead = "phaser-dead"
	health = 250
	maxHealth = 250
	melee_damage_lower = 15
	melee_damage_upper = 25
	obj_damage = 40
	speed = 0.2
	environment_smash = ENVIRONMENT_SMASH_STRUCTURES
	lighting_cutoff = LIGHTING_CUTOFF_HIGH

/mob/living/simple_animal/pet/phaser/verb/phase()
	set category = "Phase"
	set name = "Phase"
	set desc= "Phase"

	if(incorporeal_move)
		incorporeal_move = FALSE
	else
		incorporeal_move = INCORPOREAL_MOVE_SHADOW
