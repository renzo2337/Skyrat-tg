
#define SIERPINSKI_EQUIPMENT_NAME "AEON Industries Replika Equipment"
#define CARGO_COMPANY_SIERPINSKI_EQUIPMENT (1<<10)

// AEON Industries Replika Equipment

/datum/cargo_company/sierpinski
	name = SIERPINSKI_EQUIPMENT_NAME
	company_flag = CARGO_COMPANY_SIERPINSKI_EQUIPMENT
	cost = 3000
	cost_change_lower = -1000
	cost_change_upper = 2000
	can_roundstart_pick = FALSE

/datum/armament_entry/company_import/sierpinski
	category = SIERPINSKI_EQUIPMENT_NAME
	company_bitflag = CARGO_COMPANY_SIERPINSKI_EQUIPMENT

// Repair meds

/datum/armament_entry/company_import/sierpinski/repair
	subcategory = "Replika repair supplies"

/datum/armament_entry/company_import/sierpinski/repair/kit
	name = "Replika repair suplies kit"
	item_type = /obj/item/storage/medkit/sierpinski
	cost = PAYCHECK_COMMAND * 10

/datum/armament_entry/company_import/sierpinski/repair/patch
	name = "Replika repair patch"
	item_type = /obj/item/reagent_containers/hypospray/medipen/sierpinski/patch
	cost = PAYCHECK_COMMAND * 2

/datum/armament_entry/company_import/sierpinski/repair/spray
	name = "Replika repair spray"
	item_type = /obj/item/reagent_containers/hypospray/medipen/sierpinski/spray
	cost = PAYCHECK_COMMAND * 3

/datum/armament_entry/company_import/sierpinski/repair/spray_plus
	name = "Replika repair spray+"
	item_type = /obj/item/reagent_containers/hypospray/medipen/sierpinski/spray_plus
	cost = PAYCHECK_COMMAND * 5

/datum/armament_entry/company_import/sierpinski/repair/autoinjector
	name = "Replika autoinjector"
	item_type = /obj/item/reagent_containers/hypospray/medipen/sierpinski/autoinjector
	cost = PAYCHECK_COMMAND * 7

// Armor

/datum/armament_entry/company_import/sierpinski/armor
	subcategory = "Sierpinski Armor"

/datum/armament_entry/company_import/sierpinski/armor/black
	name = "AEON replika armor"
	item_type = /obj/item/clothing/suit/armor/vest/sierpinski
	cost = PAYCHECK_COMMAND * 3

// Weapons

/datum/armament_entry/company_import/sierpinski/weapons
	subcategory = "Sierpinski weapons"

/datum/armament_entry/company_import/sierpinski/weapons/revolver
	item_type = /obj/item/gun/ballistic/revolver/sierpinski
	cost = PAYCHECK_COMMAND * 6

/datum/armament_entry/company_import/sierpinski/weapons/smg
	item_type = /obj/item/gun/ballistic/automatic/sierpinski/no_mag
	cost = PAYCHECK_COMMAND * 10

/datum/armament_entry/company_import/sierpinski/weapons/rifle
	item_type = /obj/item/gun/ballistic/rifle/sierpinski
	cost = PAYCHECK_COMMAND * 12
	restricted = TRUE

// Ammo

/datum/armament_entry/company_import/sierpinski/ammo
	subcategory = "Sierpinski ammunition"

/datum/armament_entry/company_import/sierpinski/ammo/s12mm
	name = "Ammo box (12x40mm Short Letal)"
	item_type = /obj/item/ammo_box/s12mm
	cost = PAYCHECK_COMMAND * 2

/datum/armament_entry/company_import/sierpinski/ammo/s8mm
	name = "Ammo box (8x22mm 'Kompact')"
	item_type = /obj/item/ammo_box/s8mm
	cost = PAYCHECK_COMMAND * 3

/datum/armament_entry/company_import/sierpinski/ammo/s16mm
	name = "Ammo box (16x80mm Armor-Piercing)"
	item_type = /obj/item/ammo_box/s16mm
	cost = PAYCHECK_COMMAND * 5

// Magazines

/datum/armament_entry/company_import/sierpinski/mag
	subcategory = "Sierpinski magazines"

/datum/armament_entry/company_import/sierpinski/mag/s8mm
	name = "Type-84 smg magazine (8x22mm 'Kompact')"
	item_type = /obj/item/ammo_box/magazine/s8mm/starts_empty
	cost = PAYCHECK_COMMAND * 1

// Misc

/datum/armament_entry/company_import/sierpinski/misc
	subcategory = "Sierpinski miscs"

/datum/armament_entry/company_import/sierpinski/misc/flag
	name = "Eusan Nation Flag"
	item_type = /obj/item/sign/flag/eusan
	cost = PAYCHECK_COMMAND * 2
