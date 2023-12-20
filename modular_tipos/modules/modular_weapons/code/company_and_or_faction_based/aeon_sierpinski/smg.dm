// Type-84 'Drache' Submachinegun

/obj/item/gun/ballistic/automatic/sierpinski
	name = "\improper Type-84 'Drache' Submachinegun"
	desc = "An automatic Submachine gun with a collapsible stock. Fires 3-round bursts of 8mm compact ammo from a 30-round magazine."
	icon_state = "drache"
	inhand_icon_state = "drache"
	icon = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/aeon_sierpinski/sig_handguns.dmi'
	righthand_file = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/aeon_sierpinski/sig_onmob_righthand.dmi'
	lefthand_file = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/aeon_sierpinski/sig_onmob_lefthand.dmi'
	fire_sound = 'modular_tipos/modules/modular_weapons/sounds/signalis_smg.ogg'
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	bolt_type = BOLT_TYPE_STANDARD
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_MEDIUM
	slot_flags = ITEM_SLOT_OCLOTHING | ITEM_SLOT_BELT
	mag_display = TRUE
	empty_indicator = TRUE

	accepted_magazine_type = /obj/item/ammo_box/magazine/s8mm
	spawn_magazine_type =/obj/item/ammo_box/magazine/s8mm

	can_suppress = FALSE
	can_bayonet = FALSE
	burst_size = 3
	fire_delay = 0.2 SECONDS
	spread = 3
	recoil = 1

/obj/item/gun/ballistic/automatic/sierpinski/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_CARWO)

/obj/item/gun/ballistic/automatic/sierpinski/examine_more(mob/user)
	. = ..()

	. += "An automatic Submachine gun with a collapsible stock.  \
		Fires 3-round bursts of 8mm compact ammo from a 30-round magazine. \
		Despite the smaller caliber, burst fire allows for improved damage, \
		especially when quick target acquisition is required."

	return .

/obj/item/gun/ballistic/automatic/sierpinski/no_mag
	spawnwithmagazine = FALSE

/// 8x22mm Type-84 'Drache' Submachinegun caliber

#define CALIBER_S8MM "8x22mm 'Kompact'"

// 8x22mm Type-84 'Drache' Submachinegun Ammo

/obj/item/ammo_casing/s8mm
	name = "8x22mm lethal bullet casing"
	desc = "A AEON standard caseless lethal SMG round."
	icon = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/aeon_sierpinski/sig_ammo.dmi'
	icon_state = "8mm"

	caliber = CALIBER_S8MM
	projectile_type = /obj/projectile/bullet/s8mm

/obj/projectile/bullet/s8mm
	name = "8x22mm bullet"
	damage = 15
	wound_bonus = 10
	bare_wound_bonus = 20

/obj/item/ammo_box/s8mm
	name = "ammo box (8x22mm 'Kompact')"
	desc = "A box of 8x22mm cartridges optimized for automatic fire. Officially referred as Wuqiong 9-Kompakt 8x22mm Ammo, holds twenty-four rounds."
	icon = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/aeon_sierpinski/sig_ammo.dmi'
	icon_state = "8mm_box"

	multiple_sprites = AMMO_BOX_FULL_EMPTY
	w_class = WEIGHT_CLASS_NORMAL
	caliber = CALIBER_S8MM
	ammo_type = /obj/item/ammo_casing/s8mm
	max_ammo = 45

// Type-84 'Drache' Submachinegun Magazine

/obj/item/ammo_box/magazine/s8mm
	name = "\improper Type-84 SMG magazine"
	desc = "A standard size magazine for the Type-84 SMG, holds thirty rounds."
	icon = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/aeon_sierpinski/sig_ammo.dmi'
	icon_state = "drache_mag"
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	w_class = WEIGHT_CLASS_TINY
	ammo_type = /obj/item/ammo_casing/s8mm
	caliber = CALIBER_S8MM
	max_ammo = 30

/obj/item/ammo_box/magazine/s8mm/starts_empty
	start_empty = TRUE
