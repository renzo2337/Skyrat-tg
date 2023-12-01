// BW-5 Nitro Express Rifle

/obj/item/gun/ballistic/rifle/sierpinski
	name = "BW-5 Nitro Express Rifle"
	desc = "A large-bore double-barreled hunting rifle. The recoil feels strong enough to break your shoulder."
	icon_state = "sig_rif"
	inhand_icon_state = "sig_rif"
	worn_icon_state = "sig_rif"
	icon = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/aeon_sierpinski/sig_guns.dmi'
	righthand_file = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/aeon_sierpinski/sig_onmob_righthand.dmi'
	lefthand_file = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/aeon_sierpinski/sig_onmob_lefthand.dmi'
	worn_icon = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/aeon_sierpinski/sig_onmob.dmi'
	fire_sound = 'modular_tipos/modules/modular_weapons/sounds/signalis_rifle.ogg'
	load_sound = 'sound/weapons/gun/shotgun/insert_shell.ogg'
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	recoil = 4
	force = 10
	fire_delay = 2 SECONDS
	fire_sound_volume = 90
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_OCLOTHING
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/s16mm
	semi_auto = TRUE
	casing_ejector = FALSE
	bolt_type = BOLT_TYPE_NO_BOLT
	can_be_sawn_off = FALSE
	can_suppress = FALSE
	can_bayonet = FALSE

/obj/item/gun/ballistic/rifle/sierpinski/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_TRAPPISTE)

/obj/item/gun/ballistic/rifle/sierpinski/examine_more(mob/user)
	. = ..()

	. += "The BW-5 Nitro Express is a large-bore double-barreled hunting rifle. \
		Fires armor-piercing 16mm 'Nitro Express' ammunition. \
		The recoil feels strong enough to break your shoulder. \
		Very high damage. Easily penetrates armor plating, ballistic shields and enemies. \
		16x80mm armor-piercing rifle cartridges containing tungsten carbide bullets coated in polytetrafluoroethylene."

/// 16x80mm rifle caliber

#define CALIBER_S16MM "16x80mm Armor-Piercing"

// BW-5 Nitro Express Rifle Ammo

/obj/item/ammo_casing/s16mm
	name = "16x80mm armor-piercing cartridge"
	desc = "Large caliber PTFE-coated high-power armor-piercing 16mm 'Nitro Express' Rifle ammunition. Packs a punch."
	icon = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/aeon_sierpinski/sig_ammo.dmi'
	icon_state = "16mm"
	caliber = CALIBER_S16MM
	projectile_type = /obj/projectile/bullet/s16mm

/obj/projectile/bullet/s16mm
	name ="16x80mm armor-piercing bullet"
	icon_state = "gaussphase"
	damage = 60
	armour_penetration = 60
	wound_bonus = -30
	bare_wound_bonus = -15

/obj/item/ammo_box/s16mm
	name = "ammo box (16x80mm Armor-Piercing)"
	desc = "A box of 16x80mm AP rounds, holds six rounds."

	icon = 'modular_tipos/modules/modular_weapons/icons/obj/company_and_or_faction_based/aeon_sierpinski/sig_ammo.dmi'
	icon_state = "16mm_box"

	multiple_sprites = AMMO_BOX_FULL_EMPTY

	w_class = WEIGHT_CLASS_NORMAL

	caliber = CALIBER_S16MM
	ammo_type = /obj/item/ammo_casing/s16mm
	max_ammo = 6

// BW-5 Nitro Express Rifle Magazine

/obj/item/ammo_box/magazine/internal/shot/s16mm
	ammo_type = /obj/item/ammo_casing/s16mm
	caliber = CALIBER_S16MM
	max_ammo = 2
	multiload = FALSE

// Company Imports - // BW-5 Nitro Express Rifle

/datum/armament_entry/company_import/sol_defense/longarm/sierpinski
	item_type = /obj/item/gun/ballistic/rifle/sierpinski
	cost = PAYCHECK_COMMAND * 12
	restricted = TRUE

// Company Imports - 12x40mm ammo

/datum/armament_entry/company_import/vitezstvi/ammo_boxes/s16mm
	item_type = /obj/item/ammo_box/s16mm
	cost = PAYCHECK_COMMAND * 5
