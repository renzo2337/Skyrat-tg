/datum/supply_pack/critter/boar_c
	name = "Boar crate"
	desc = "Contiene un BOAR REAL y un boarluche para que le haga compañia (no se aceptan devoluciones)"
	cost = CARGO_CRATE_VALUE * 3
	contains = list(/mob/living/simple_animal/pet/boar,
	/obj/item/toy/plush/tipos/boar_plush)
	group = "Livestock"
	crate_type = /obj/structure/closet/crate/critter
