/mob/living/basic/pet/boar
	name = "boar"
	desc = "Un pequeño boar salvaje, mejor mantenerlo alejado de los monos"
	icon = 'modular_tipos/master_files/icons/mob/simple/boarmobs.dmi'
	icon_state = "boar"
	icon_living = "boar"
	icon_dead = "boar_dead"
	speak_emote = list("roars", "grunts")
	gold_core_spawneable = TRUE
	butcher_results = list(
		mob/living/carbon/human/monkey = 1,
		obj/item/food/meat = 6
	)

