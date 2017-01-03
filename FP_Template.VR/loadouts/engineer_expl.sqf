params ["_unit", "_type"];

// Fake backpack to store magazines and then load them. This ensures that weapons are loaded
_unit addBackpack "ACE_FakeBackpack";
// Primary weapon
_unit addMagazine "30Rnd_65x39_caseless_mag";
_unit addWeapon "arifle_MXC_Holo_pointer_F";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "optic_Holosight";
// Handgun
_unit addMagazine "16Rnd_9x21_Mag";
_unit addWeapon "hgun_P07_F";
removeBackpack _unit;

// Containers / clothes
_unit addHeadgear "H_HelmetSpecB";
_unit forceAddUniform "U_B_CombatUniform_mcam";
_unit addVest "V_PlateCarrierGL_rgr";
_unit addBackpack "B_Kitbag_rgr_Exp";
clearAllItemsFromBackpack _unit;
{_unit linkItem _x} forEach ["ItemMap","ItemCompass","ItemWatch","NVGoggles"];

// Uniform items
_unit addItemToUniform "ACE_Clacker";
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "ACE_DefusalKit";
{_unit addItemToUniform "Chemlight_green"} count [1,2];
{_unit addItemToUniform "ACE_fieldDressing"} count [1,2];
// Vest items
_unit addItemToVest "SmokeShell";
_unit addItemToVest "16Rnd_9x21_Mag";
_unit addItemToVest "SmokeShellGreen";
{_unit addItemToVest "HandGrenade"} count [1,2];
{_unit addItemToVest "APERSMine_Range_Mag"} count [1,2,3];
{_unit addItemToVest "30Rnd_65x39_caseless_mag"} count [1,2,3,4];
// Backpack items
_unit addItemToBackpack "MineDetector";
_unit addItemToBackpack "DemoCharge_Remote_Mag";
{_unit addItemToBackpack "SLAMDirectionalMine_Wire_Mag"} count [1,2];
{_unit addItemToBackpack "APERSBoundingMine_Range_Mag"} count [1,2,3];
{_unit addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag"} count [1,2];

_unit addItemToUniform "ACRE_PRC343";
