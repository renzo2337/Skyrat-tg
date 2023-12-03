
#define SIERPINSKI_EQUIPMENT_NAME "AEON Equipment"
#define CARGO_COMPANY_SIERPINSKI_EQUIPMENT (1<<10)

// AEON Industries equipment

/datum/cargo_company/sierpinski
	name = SIERPINSKI_EQUIPMENT_NAME
	company_flag = CARGO_COMPANY_SIERPINSKI_EQUIPMENT
	cost = 3000
	cost_change_lower = -1000
	cost_change_upper = 2000
	can_roundstart_pick = FALSE

/datum/armament_entry/company_import/sierpinski
	category = SIERPINSKI_EQUIPMENT_NAME
	company_bitflag = CARGO_COMPANY_SOL_DEFENSE

// Repair meds

/datum/armament_entry/company_import/sierpinski/repair
	subcategory = "Replika repair equipment"

/datum/armament_entry/company_import/sierpinski/repair/kit
	name = "Replika repair kit"
	item_type = /obj/item/storage/medkit/sierpinski
	cost = PAYCHECK_CREW * 5

/datum/armament_entry/company_import/sierpinski/repair/patch
	name = "Replika repair patch"
	item_type = /obj/item/reagent_containers/hypospray/sierpinski/patch
	cost = PAYCHECK_CREW * 2

/datum/armament_entry/company_import/sierpinski/repair/spray
	name = "Replika repair spray"
	item_type = /obj/item/reagent_containers/hypospray/sierpinski/spray
	cost = PAYCHECK_CREW * 3

/datum/armament_entry/company_import/sierpinski/repair/spray_plus
	name = "Replika repair spray+"
	item_type = /obj/item/reagent_containers/hypospray/sierpinski/spray_plus
	cost = PAYCHECK_CREW * 5

/datum/armament_entry/company_import/sierpinski/repair/autoinjector
	name = "Replika autoinjector"
	item_type = /obj/item/reagent_containers/hypospray/sierpinski/autoinjector
	cost = PAYCHECK_CREW * 7

// Weapons

datum/armament_entry/company_import/sierpinski/weapons
	subcategory = "Sierpinski weapons"

/datum/armament_entry/company_import/sierpinski/weapons/revolver
	item_type = /obj/item/gun/ballistic/revolver/sierpinski
	cost = PAYCHECK_COMMAND * 6

/datum/armament_entry/company_import/sierpinski/weapons/rifle
	item_type = /obj/item/gun/ballistic/rifle/sierpinski
	cost = PAYCHECK_COMMAND * 12
	restricted = TRUE

// Ammo

datum/armament_entry/company_import/sierpinski/ammo
	subcategory = "Sierpinski ammunition"

/datum/armament_entry/company_import/sierpinski/ammo/s12mm
	item_type = /obj/item/ammo_box/s12mm

/datum/armament_entry/company_import/sierpinski/ammo/s16mm
	item_type = /obj/item/ammo_box/s16mm
	cost = PAYCHECK_COMMAND * 5
