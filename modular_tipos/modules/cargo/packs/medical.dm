// Common Box - Sierpinski

/obj/structure/closet/crate/sierpinski
	name = "AEON shipment crate"
	desc = "A secure AEON shipment crate. Not secure at all."
	icon_state = "sierpinski"
	base_icon_state = "sierpinski"
	icon = 'modular_tipos/master_files/icons/obj/storage/crates.dmi'

// Pack de Cargo - AEON Repair Supplies

/datum/supply_pack/medical/sierpinski
	name = "AEON Repair Supplies Crate"
	desc = "Contains a assortment of repairs sprays and patches supplies."
	cost = CARGO_CRATE_VALUE * 20
	crate_type = /obj/structure/closet/crate/sierpinski
	contains = list(/obj/item/storage/medkit/sierpinski = 3)
	crate_name = "AEON repair supplies crate"
