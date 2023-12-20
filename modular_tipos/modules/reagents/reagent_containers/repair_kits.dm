// Nanite Slurry based Repair Foam

/datum/reagent/medicine/nanite_slurry/sierpinski
	name = "Repair Foam"
	overdose_threshold = 75
	metabolization_rate = 1 * REAGENTS_METABOLISM

// Sierpinski Repair Tools

/obj/item/reagent_containers/hypospray/medipen/sierpinski
	icon = 'modular_tipos/modules/reagents/reagent_containers/repair_kits.dmi'
	righthand_file = 'modular_tipos/modules/reagents/reagent_containers/repair_kits_righthand.dmi'
	lefthand_file = 'modular_tipos/modules/reagents/reagent_containers/repair_kits_lefthand.dmi'

/obj/item/reagent_containers/hypospray/medipen/sierpinski/Initialize(mapload)
	. = ..()
	label_text = span_notice("There is a sticker pasted onto the side which reads, 'WARNING: Synthetic use only, do not use on organic beings.")

/obj/item/reagent_containers/hypospray/medipen/sierpinski/patch
	name = "repair patch"
	desc = "A sealed, single-use adhesive patch containing a coagulation agent to patch up damaged areas. Restores a small amount of health over time when applied."
	base_icon_state = "rep_patch"
	inhand_icon_state = "rep_patch"
	amount_per_transfer_from_this = 15
	volume = 15
	list_reagents = list(/datum/reagent/medicine/nanite_slurry/sierpinski = 15)

/obj/item/reagent_containers/hypospray/medipen/sierpinski/spray
	name = "repair spray"
	desc = "A single-use spray gun to fill damaged areas with polyurethane-based expanding foam. Restores a large amount of health over time."
	base_icon_state = "rep_spray"
	inhand_icon_state = "rep_spray"
	amount_per_transfer_from_this = 25
	volume = 25
	list_reagents = list(/datum/reagent/medicine/nanite_slurry/sierpinski = 25)

/obj/item/reagent_containers/hypospray/medipen/sierpinski/spray_plus
	name = "repair spray+"
	desc = "A single-use spray gun to fill damaged areas with fast-curing polyurethane-based foam. Restores a medium amount of health instantly."
	base_icon_state = "rep_spray_plus"
	inhand_icon_state = "rep_spray_plus"
	amount_per_transfer_from_this = 35
	volume = 35
	list_reagents = list(/datum/reagent/medicine/nanite_slurry/sierpinski = 35)

/obj/item/reagent_containers/hypospray/medipen/sierpinski/autoinjector
	name = "autoinjector"
	desc = "Autoinjector Syringe filled with REPLIKA-KLStim-N stimulant. Quick and easy to use."
	base_icon_state = "rep_auto"
	inhand_icon_state = "rep_auto"
	amount_per_transfer_from_this = 45
	volume = 45
	list_reagents = list(/datum/reagent/medicine/nanite_slurry/sierpinski = 45)

// Sierpinski Repair Patches - NO FUNCIONA
/*
/obj/item/stack/medical/sierpinski/patch
	name = "repair patches"
	desc = "A sealed, single-use adhesive patch containing a coagulation agent to patch up damaged areas. Restores a small amount of health over time when applied."
	gender = PLURAL
	singular_name = "repair patch"
	icon = 'modular_tipos/modules/reagents/reagent_containers/repair_kits.dmi'
	righthand_file = 'modular_tipos/modules/reagents/reagent_containers/repair_kits_righthand.dmi'
	lefthand_file = 'modular_tipos/modules/reagents/reagent_containers/repair_kits_lefthand.dmi'
	icon_state = "rep_patch"
	self_delay = 5 SECONDS
	other_delay = 2 SECONDS
	amount = 10
	max_amount = 10

	var/is_open = FALSE
	merge_type = /obj/item/stack/medical/sierpinski/patch

/obj/item/stack/medical/sierpinski/patch/Initialize(mapload, new_amount, merge = TRUE, list/mat_override=null, mat_amt=1)
	. = ..()
	if(amount == max_amount)
		is_open = FALSE
		update_appearance()

/obj/item/stack/medical/sierpinski/patch/attack(mob/living/carbon/human/H, mob/user)
	if(!istype(H))
		return ..()

	var/obj/item/bodypart/affecting = H.get_bodypart(check_zone(user.zone_selected))
	if(affecting && IS_ROBOTIC_LIMB(affecting))
		if(user == H)
			user.visible_message(span_notice("[user] starts applying the repair patch in [H]'s [affecting.name]."), span_notice("You start applying the repair patch in [H == user ? "your" : "[H]'s"] [affecting.name]."))

		if(!do_after(user, (user == H ? self_delay : other_delay)))
			return

		if(item_heal_robotic(H, user, 10, 10))
			user.visible_message(span_green("[user] applies some of the repair patch in [H]'s [affecting.name]."), span_green("You apply some of the repair patch in [H == user ? "your" : "[H]'s"] [affecting.name]."))
			use(1)
		return
	else
		return ..()
*/

// Replika Repair kit container

/obj/item/storage/medkit/sierpinski
	name = "replika repair toolkit"
	desc = "An emergency repair kit for synthetic units. Produces by AEON."
	icon_state = "rep_kit"
	inhand_icon_state = "rep_kit"
	icon = 'modular_tipos/modules/reagents/reagent_containers/repair_kits.dmi'
	righthand_file = 'modular_tipos/modules/reagents/reagent_containers/repair_kits_righthand.dmi'
	lefthand_file = 'modular_tipos/modules/reagents/reagent_containers/repair_kits_righthand.dmi'

/obj/item/storage/medkit/sierpinski/Initialize(mapload)
	. = ..()
	atom_storage.max_total_storage = 14
	atom_storage.max_slots = 7
	atom_storage.can_hold = typecacheof(list(/obj/item/reagent_containers/hypospray/medipen/sierpinski))

/obj/item/storage/medkit/sierpinski/PopulateContents()
	generate_items_inside(list(
		/obj/item/reagent_containers/hypospray/medipen/sierpinski/patch = 2,
		/obj/item/reagent_containers/hypospray/medipen/sierpinski/spray = 2,
		/obj/item/reagent_containers/hypospray/medipen/sierpinski/spray_plus = 2,
		/obj/item/reagent_containers/hypospray/medipen/sierpinski/autoinjector = 1,
	),src)
