// Nanite Slurry based repair foam

/datum/reagent/medicine/nanite_slurry/sierpinski
	overdose_threshold = 75
	metabolization_rate = 2 * REAGENTS_METABOLISM
	healing = 3

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
	desc = "A sealed, single-use adhesive patch containing a coagulation agent to patch up damaged areas. Restores a small amount of health over time."
	icon_state = "rep_patch"
	inhand_icon_state = "rep_patch"
	amount_per_transfer_from_this = 10
	volume = 10
	list_reagents = list(/datum/reagent/medicine/nanite_slurry/sierpinski = 10)

/obj/item/reagent_containers/hypospray/medipen/sierpinski/spray
	name = "repair spray"
	desc = "A single-use spray gun to fill damaged areas with polyurethane-based expanding foam. Restores a large amount of health over time."
	icon_state = "rep_spray"
	inhand_icon_state = "rep_spray"
	amount_per_transfer_from_this = 20
	volume = 20
	list_reagents = list(/datum/reagent/medicine/nanite_slurry/sierpinski = 20)

/obj/item/reagent_containers/hypospray/medipen/sierpinski/spray_plus
	name = "repair spray+"
	desc = "A single-use spray gun to fill damaged areas with fast-curing polyurethane-based foam. Restores a medium amount of health instantly."
	icon_state = "rep_spray_plus"
	inhand_icon_state = "rep_spray_plus"
	amount_per_transfer_from_this = 30
	volume = 30
	list_reagents = list(/datum/reagent/medicine/nanite_slurry/sierpinski = 30)

/obj/item/reagent_containers/hypospray/medipen/sierpinski/autoinjector
	name = "autoinjector"
	desc = "Autoinjector Syringe filled with REPLIKA-KLStim-N stimulant. Quick and easy to use."
	icon_state = "rep_auto"
	inhand_icon_state = "rep_auto"
	amount_per_transfer_from_this = 45
	volume = 45
	list_reagents = list(/datum/reagent/medicine/nanite_slurry/sierpinski = 45)

// Replika Repair kit container

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
	atom_storage.can_hold = typecacheof(list(/obj/item/reagent_containers/hypospray/medipen/sierpinski/patch, /obj/item/reagent_containers/hypospray/medipen/sierpinski/spray, /obj/item/reagent_containers/hypospray/medipen/sierpinski/spray_plus, /obj/item/reagent_containers/hypospray/medipen/sierpinski/autoinjector))

/obj/item/storage/medkit/sierpinski/PopulateContents()
	generate_items_inside(list(
		/obj/item/reagent_containers/hypospray/medipen/sierpinski/patch = 3,
		/obj/item/reagent_containers/hypospray/medipen/sierpinski/spray = 2,
		/obj/item/reagent_containers/hypospray/medipen/sierpinski/spray_plus = 2,
		/obj/item/reagent_containers/hypospray/medipen/sierpinski/autoinjector = 1,
	),src)
