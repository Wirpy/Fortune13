/*
 * Contains:
 *		Surgery scrubs
 *		Fire protection
 *		Bomb protection
 *		Radiation protection
 */


/obj/item/clothing/suit/hooded/surgical
	name = "surgical scrubs"
	desc = "A bundle with all the sterile clothing needed to perform safe surgery accoring to the standards set in the Followers' pamphlet on safe surgery. The shoe covers have grip surfaces to prevent slipping in the blood."
	icon = 'icons/fallout/clothing/suits-utility.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/suit-utility.dmi'
	icon_state = "surgical-scrubs"
	w_class = WEIGHT_CLASS_BULKY
	strip_delay = 60
	equip_delay_other = 60
	hoodtype = /obj/item/clothing/head/hooded/surgical
	clothing_flags = NOSLIP
	permeability_coefficient = 0.6
	body_parts_covered = CHEST|GROIN|LEGS|FEET
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/medical
	armor = list("tier" = 0, "energy" = 0, "bomb" = 0, "bio" = 40, "rad" = 10, "fire" = 0, "acid" = 10)

/obj/item/clothing/head/hooded/surgical
	name = "hair net"
	desc = "It's not a good idea to risk hair falling into open wounds."
	icon = 'icons/fallout/clothing/suits-utility.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/suit-utility.dmi'
	icon_state = "hood_surgical-scrubs"
	item_state = "hood_surgical-scrubs"
	flags_inv = HIDEHAIR
	armor = list("tier" = 0, "energy" = 0, "bomb" = 0, "bio" = 40, "rad" = 10, "fire" = 0, "acid" = 10)


/*
 * Fire protection
 */

/obj/item/clothing/suit/fire
	name = "emergency firesuit"
	desc = "(II) A suit that helps protect against fire and heat."
	icon_state = "fire"
	item_state = "ro_suit"
	w_class = WEIGHT_CLASS_BULKY
	gas_transfer_coefficient = 0.9
	permeability_coefficient = 0.5
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	slowdown = 1
	armor = list("tier" = 2, "energy" = 10, "bomb" = 20, "bio" = 10, "rad" = 20, "fire" = 100, "acid" = 50)
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT|HIDETAUR
	clothing_flags = STOPSPRESSUREDAMAGE | THICKMATERIAL
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 60
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/fire/firefighter
	icon_state = "firesuit"
	item_state = "firefighter"
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT|HIDETAUR
	mutantrace_variation = STYLE_DIGITIGRADE|STYLE_SNEK_TAURIC|STYLE_PAW_TAURIC


/obj/item/clothing/suit/fire/heavy
	name = "heavy firesuit"
	desc = "An old, bulky thermal protection suit."
	icon_state = "thermal"
	item_state = "ro_suit"
	slowdown = 1.5

/obj/item/clothing/suit/fire/atmos
	name = "firesuit"
	desc = "An expensive firesuit that protects against even the most deadly of station fires. Designed to protect even if the wearer is set aflame."
	icon_state = "atmos_firesuit"
	item_state = "firesuit_atmos"
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT|HIDETAUR
	mutantrace_variation = STYLE_DIGITIGRADE|STYLE_SNEK_TAURIC|STYLE_PAW_TAURIC

/*
 * Bomb protection
 */
/obj/item/clothing/head/bomb_hood
	name = "bomb hood"
	desc = "(II) Use in case of bomb."
	icon_state = "bombsuit"
	clothing_flags = THICKMATERIAL
	armor = list("tier" = 2, "energy" = 10, "bomb" = 100, "bio" = 0, "rad" = 0, "fire" = 80, "acid" = 50)
	flags_inv = HIDEFACE|HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""
	cold_protection = HEAD
	min_cold_protection_temperature = HELMET_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = HELMET_MAX_TEMP_PROTECT
	strip_delay = 70
	equip_delay_other = 70
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = NONE
	mutantrace_variation = STYLE_MUZZLE


/obj/item/clothing/suit/bomb_suit
	name = "bomb suit"
	desc = "(II) A suit designed for safety when handling explosives."
	icon_state = "bombsuit"
	item_state = "bombsuit"
	w_class = WEIGHT_CLASS_BULKY
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	clothing_flags = THICKMATERIAL
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	slowdown = 2
	armor = list("tier" = 2,"energy" = 10, "bomb" = 100, "bio" = 0, "rad" = 0, "fire" = 80, "acid" = 50)
	flags_inv = HIDEJUMPSUIT|HIDETAUR
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	strip_delay = 70
	equip_delay_other = 70
	resistance_flags = NONE
	mutantrace_variation = STYLE_DIGITIGRADE|STYLE_SNEK_TAURIC|STYLE_PAW_TAURIC


/obj/item/clothing/head/bomb_hood/security
	icon_state = "bombsuit_sec"
	item_state = "bombsuit_sec"

/obj/item/clothing/suit/bomb_suit/security
	icon_state = "bombsuit_sec"
	item_state = "bombsuit_sec"


/obj/item/clothing/head/bomb_hood/white
	icon_state = "bombsuit_white"
	item_state = "bombsuit_white"

/obj/item/clothing/suit/bomb_suit/white
	icon_state = "bombsuit_white"
	item_state = "bombsuit_white"

/*
* Radiation protection
*/

/obj/item/clothing/head/radiation
	name = "radiation hood"
	icon_state = "rad"
	desc = "(II) A hood with radiation protective properties. The label reads, 'Made with lead. Please do not consume insulation.'"
	clothing_flags = THICKMATERIAL
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	armor = list("tier" = 2,"energy" = 0, "bomb" = 0, "bio" = 60, "rad" = 100, "fire" = 30, "acid" = 30)
	strip_delay = 60
	equip_delay_other = 60
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = NONE
	rad_flags = RAD_PROTECT_CONTENTS | RAD_NO_CONTAMINATE
	mutantrace_variation = STYLE_MUZZLE

/obj/item/clothing/suit/radiation
	name = "radiation suit"
	desc = "(II) suit that protects against radiation. The label reads, 'Made with lead. Please do not consume insulation.'"
	icon_state = "rad"
	item_state = "rad_suit"
	w_class = WEIGHT_CLASS_BULKY
	gas_transfer_coefficient = 0.9
	permeability_coefficient = 0.5
	clothing_flags = THICKMATERIAL
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	slowdown = 1.5
	armor = list("tier" = 2,"energy" = 0, "bomb" = 0, "bio" = 60, "rad" = 100, "fire" = 30, "acid" = 30)
	strip_delay = 60
	equip_delay_other = 60
	flags_inv = HIDEJUMPSUIT|HIDETAUR
	resistance_flags = NONE
	rad_flags = RAD_PROTECT_CONTENTS | RAD_NO_CONTAMINATE
	mutantrace_variation = STYLE_DIGITIGRADE|STYLE_ALL_TAURIC
