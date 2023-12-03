// Nanite Slurry based repair foam

/datum/reagent/medicine/nanite_slurry/sierpinski
	overdose_threshold = null
	metabolization_rate = 2 * REAGENTS_METABOLISM
	healing = 3

// Sierpinski Repair Tools

/obj/item/reagent_containers/hypospray/sierpinski
	icon = 'modular_tipos/modules/reagents/reagent_containers/repair_kits.dmi'
	righthand_file = 'modular_tipos/modules/reagents/reagent_containers/repair_kits_righthand.dmi'
	lefthand_file = 'modular_tipos/modules/reagents/reagent_containers/repair_kits_lefthand.dmi'
	has_variable_transfer_amount = FALSE
	ignore_flags = 1
	reagent_flags = DRAWABLE
	flags_1 = null
	slot_flags = null
	var/label_examine = TRUE
	var/label_text

/obj/item/reagent_containers/hypospray/sierpinski/inject(mob/living/affected_mob, mob/user)
	. = ..()
	if(.)
		reagents.maximum_volume = 0 //Makes them useless afterwards
		reagents.flags = NONE
		update_appearance()

/obj/item/reagent_containers/hypospray/sierpinski/attack_self(mob/user)
	if(user.can_perform_action(src, FORBID_TELEKINESIS_REACH|ALLOW_RESTING))
		inject(user, user)

/obj/item/reagent_containers/hypospray/sierpinski/Initialize(mapload)
	. = ..()
	label_text = span_notice("There is a sticker pasted onto the side which reads, 'WARNING: Synthetic use only, do not use on organic beings.")

/obj/item/reagent_containers/hypospray/sierpinski/examine()
	. = ..()
	if (label_examine)
		. += label_text
	if(length(reagents?.reagent_list))
		. += span_notice("It is loaded.")
	else
		. += span_notice("It is spent.")

/obj/item/reagent_containers/hypospray/sierpinski/patch
	name = "repair patch"
	desc = "A sealed, single-use adhesive patch containing a coagulation agent to patch up damaged areas. Restores a small amount of health over time."
	icon_state = "rep_patch"
	inhand_icon_state = "rep_patch"
	amount_per_transfer_from_this = 10
	volume = 10
	list_reagents = list(/datum/reagent/medicine/nanite_slurry/sierpinski = 10)

/obj/item/reagent_containers/hypospray/sierpinski/spray
	name = "repair spray"
	desc = "A single-use spray gun to fill damaged areas with polyurethane-based expanding foam. Restores a large amount of health over time."
	icon_state = "rep_spray"
	inhand_icon_state = "rep_spray"
	amount_per_transfer_from_this = 20
	volume = 20
	list_reagents = list(/datum/reagent/medicine/nanite_slurry/sierpinski = 20)

/obj/item/reagent_containers/hypospray/sierpinski/spray_plus
	name = "repair spray+"
	desc = "A single-use spray gun to fill damaged areas with fast-curing polyurethane-based foam. Restores a medium amount of health instantly."
	icon_state = "rep_spray_plus"
	inhand_icon_state = "rep_spray_plus"
	amount_per_transfer_from_this = 30
	volume = 30
	list_reagents = list(/datum/reagent/medicine/nanite_slurry/sierpinski = 30)

/obj/item/reagent_containers/hypospray/sierpinski/autoinjector
	name = "autoinjector"
	desc = "Autoinjector Syringe filled with REPLIKA-KLStim-N stimulant. Quick and easy to use."
	icon_state = "rep_auto"
	inhand_icon_state = "rep_auto"
	amount_per_transfer_from_this = 50
	volume = 50
	list_reagents = list(/datum/reagent/medicine/nanite_slurry/sierpinski = 50)

// Replika Repair kit container (empty)

/obj/item/storage/medkit/sierpinski
	name = "replika repair kit"
	desc = "It's an emergency repair kit for synthetic units."
	icon_state = "rep_kit"
	inhand_icon_state = "rep_kit"
	icon = 'modular_tipos/modules/reagents/reagent_containers/repair_kits.dmi'
	righthand_file = 'modular_tipos/modules/reagents/reagent_containers/repair_kits_righthand.dmi'
	lefthand_file = 'modular_tipos/modules/reagents/reagent_containers/repair_kits_righthand.dmi'

/obj/item/storage/medkit/sierpinski/Initialize(mapload)
	. = ..()
	atom_storage.max_total_storage = 16
	atom_storage.max_slots = 8
	atom_storage.can_hold = typecacheof(list(/obj/item/reagent_containers/hypospray/sierpinski/patch, /obj/item/reagent_containers/hypospray/sierpinski/spray, /obj/item/reagent_containers/hypospray/sierpinski/spray_plus, /obj/item/reagent_containers/hypospray/sierpinski/autoinjector))
