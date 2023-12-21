
// Secure Box - Sierpinski

/obj/structure/closet/crate/secure/sierpinski
	name = "AEON equipment crate"
	desc = "A sturdy secure AEON equipment crate. Rule of six my ass."
	icon_state = "sierpinski_secure"
	base_icon_state = "sierpinski_secure"
	icon = 'modular_tipos/master_files/icons/obj/storage/crates.dmi'

/obj/structure/closet/crate/secure/sierpinski/closet_update_overlays(list/new_overlays)
	. = new_overlays
	if(manifest)
		. += "manifest"

	if(!opened)
		if(broken)
			. += "siercrateemag"
		else if(locked)
			. += "siercrater"
		else if(secure)
			. += "siercrateg"

	if(opened && lid_icon_state)
		var/mutable_appearance/lid = mutable_appearance(icon = lid_icon, icon_state = lid_icon_state)
		lid.pixel_x = lid_x
		lid.pixel_y = lid_y
		lid.layer = layer
		. += lid

// Pack de Cargo - AEON Equipment

/datum/supply_pack/security/armory/sierpinski
	name = "AEON Replika Security Equipment"
	desc = "A secure crate that contains lethal equipment"
	cost = CARGO_CRATE_VALUE * 30
	access_view = ACCESS_ARMORY
	crate_type = /obj/structure/closet/crate/secure/sierpinski
	contains = list(/obj/item/sign/flag/eusan,
					/obj/item/storage/toolbox/guncase/skyrat/pistol/trappiste_small_case/empty = 3,
    				/obj/item/storage/toolbox/guncase/skyrat/carwo_large_case/empty,
    				/obj/item/clothing/suit/armor/vest/sierpinski = 2,
                    /obj/item/gun/ballistic/revolver/sierpinski = 2,
                    /obj/item/gun/ballistic/rifle/sierpinski,
                    /obj/item/gun/ballistic/automatic/sierpinski/no_mag,
                    /obj/item/ammo_box/magazine/s8mm/starts_empty = 3,
                    /obj/item/ammo_box/s12mm = 2,
                    /obj/item/ammo_box/s16mm = 2,
                    /obj/item/ammo_box/s8mm = 3,
                )
	crate_name = "AEON replika security equipment"
