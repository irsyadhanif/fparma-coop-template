params ["_unit", "_type"];

_unit addBackpack "ACE_FakeBackpack";
_unit addMagazine "50Rnd_570x28_SMG_03";
_unit addWeapon "SMG_03C_TR_black";
_unit addPrimaryWeaponItem "muzzle_snds_570";
_unit addPrimaryWeaponItem "RH_peq15b";
_unit addPrimaryWeaponItem "RH_barska_rds";

_unit addMagazine "RH_20Rnd_57x28_FN";
_unit addWeapon "RH_fn57_g";
removeBackpack _unit;

_unit addHeadgear "H_HelmetSpecB_blk";
_unit forceAddUniform "FP_Uniform_Black";
_unit addVest "V_TacVestIR_blk";
_unit addBackpack "B_Parachute";
clearAllItemsFromBackpack _unit;
{_unit linkItem _x} forEach ["ItemMap","ItemCompass","ACE_Altimeter","NVGoggles_OPFOR"];

_unit addItemToUniform "L_Shemagh_Gry";
_unit addItemToUniform "G_Balaclava_combat";
{_unit addItemToUniform "ACE_fieldDressing"} count [1,2,3,4,5,6,7,8];
_unit addItemToUniform "ACE_CableTie";
_unit addItemToUniform "ACE_epinephrine";
{_unit addItemToUniform "ACE_morphine"} count [1,2,3];
_unit addItemToUniform "ACE_Flashlight_MX991";
_unit addItemToUniform "ACE_microDAGR";
_unit addItemToUniform "B_IR_Grenade";
_unit addItemToUniform "ACE_M84";

{_unit addItemToVest "ACE_fieldDressing"} count [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
{_unit addItemToVest "ACE_bloodIV_500"} count [1,2];
{_unit addItemToVest "ACE_epinephrine"} count [1,2,3,4,5,6,7,8,9,10];
{_unit addItemToVest "ACE_morphine"} count [1,2,3,4,5,6,7,8,9,10];
{_unit addItemToVest "50Rnd_570x28_SMG_03"} count [1,2,3,4,5,6];
{_unit addItemToVest "SmokeShellGreen"} count [1,2];
_unit addItemToVest "RH_20Rnd_57x28_FN";
_unit addItemToVest "CUP_HandGrenade_M67";
_unit addItemToVest "ACE_M84";


_unit addItemToVest "ItemRadio";
