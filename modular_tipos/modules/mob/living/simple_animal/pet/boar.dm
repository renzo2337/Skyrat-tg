/mob/living/simple_animal/pet/boar
	name = "boar"
	desc = "Un pequeño boar salvaje, mejor mantenerlo alejado de los monos"
	icon = 'modular_tipos/master_files/icons/mob/simple/boarmobs.dmi'
	icon_state = "boar"
	icon_living = "boar"
	icon_dead = "boar_dead"
	speak_emote = list("roars", "grunts")
	gold_core_spawnable = FRIENDLY_SPAWN
	butcher_results = list(
		/obj/item/food/meat/slab = 6
	)

