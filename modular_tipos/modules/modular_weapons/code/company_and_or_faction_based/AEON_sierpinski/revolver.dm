// Eu-K508 S 'Einhorn' Revolver

/obj/item/gun/ballistic/revolver/sierpinski
	name = "\improper Eu-K508 S 'Einhorn' Revolver"
	desc = "A short-barreled double-action 6-shot revolver that fires 12x40mm ammo. High recoil, strong knockback."

	icon = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/AEON_sierpinski/revolver.dmi'
	icon_state = "r_sierpinski"
	fire_sound = 'modular_skyrat/modules/modular_weapons/sounds/revolver_heavy.ogg'

	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/cylinder/s12mm

	w_class = WEIGHT_CLASS_SMALL
	can_suppress = FALSE
	recoil = 1

/obj/item/gun/ballistic/revolver/sierpinski/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_TRAPPISTE)

/obj/item/gun/ballistic/revolver/sierpinski/examine_more(mob/user)
	. = ..()

	. += "The Eu-K508 S 'Einhorn' Revolver its a short-barreled double-action \
		6-shot revolver that fires 12mm high-power ammo. High recoil, strong knockback. \
		Manufactured by AEON and used as the main weapon in the STAR security forces of the imperial forces."

	return .

/// 12x40mm revolver caliber

#define CALIBER_S12MM "12x40mm Short"

// 12x40mm Eu-K508 S 'Einhorn' Revolver Ammo

/obj/item/ammo_casing/s12mm
	name = "12x40mm lethal bullet casing"
	desc = "Old Imperially-produced 12x40mm hollow-point bullets. Deform and fracture on impact for immense impact power."

	icon = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/AEON_sierpinski/revolver.dmi'
	icon_state = "12mm"

	caliber = CALIBER_S12MM
	projectile_type = /obj/projectile/bullet/s12mm


/obj/item/ammo_casing/s12mm/Initialize(mapload)
	. = ..()

	AddElement(/datum/element/caseless)


/obj/projectile/bullet/s12mm
	name = "12x40mm Short bullet"
	damage = 35

	wound_bonus = 10 // Normal bullets are 20
	bare_wound_bonus = 20


/obj/item/ammo_box/s12mm
	name = "ammo box (12x40mm Short lethal)"
	desc = "A box of 12x40mm rounds, holds twenty-four rounds."

	icon = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/AEON_sierpinski/revolver.dmi'
	icon_state = "12mm_box"

	multiple_sprites = AMMO_BOX_FULL_EMPTY

	w_class = WEIGHT_CLASS_NORMAL

	caliber = CALIBER_S12MM
	ammo_type = /obj/item/ammo_casing/s12mm
	max_ammo = 24


// 12x40mm's equivalent to a rubber bullet

/obj/item/ammo_casing/s12mm/incapacitator
	name = "12x40mm Short incapacitator bullet casing"
	desc = "A old Imperially-produced 12x40mm standard caseless less-lethal revolver round. Exhausts targets on hit, has a tendency to bounce off walls at shallow angles."

	icon_state = "12mm_disabler"

	projectile_type = /obj/projectile/bullet/s12mm/incapacitator
	harmful = FALSE


/obj/projectile/bullet/s12mm/incapacitator
	name = "12x40mm Short incapacitator bullet"
	damage = 10
	stamina = 35

	wound_bonus = -40
	bare_wound_bonus = -20

	weak_against_armour = TRUE

	shrapnel_type = null
	sharpness = NONE
	embedding = null


/obj/item/ammo_box/s12mm/incapacitator
	name = "ammo box (12x40mm Short incapacitator)"
	desc = "A box of .12x40mm Short rounds, holds twenty-four rounds. The blue stripe indicates this should hold less-lethal ammunition."

	icon_state = "12mm_box_disabler"

	ammo_type = /obj/item/ammo_casing/s12mm/incapacitator

// Eu-K508 S 'Einhorn' Revolver Magazine

/obj/item/ammo_box/magazine/internal/cylinder/s12mm
	ammo_type = /obj/item/ammo_casing/s12mm
	caliber = CALIBER_S12MM
	max_ammo = 6

// Company Imports - Eu-K508 S 'Einhorn' Revolver

/datum/armament_entry/company_import/sol_defense/sidearm/sierpinski
	item_type = /obj/item/gun/ballistic/revolver/sierpinski
	cost = PAYCHECK_COMMAND * 6

// Company Imports - 12x40mm ammo

/datum/armament_entry/company_import/vitezstvi/ammo_boxes/s12mm
	item_type = /obj/item/ammo_box/s12mm

/datum/armament_entry/company_import/vitezstvi/ammo_boxes/s12mm_disabler
	item_type = /obj/item/ammo_box/s12mm/incapacitator

