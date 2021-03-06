// ["rhsusf_army_ocp_medic", "example.sqf"]
params ["_unit", "_type"];

// Fake backpack to store magazines and then load them. This ensures that weapons are loaded
_unit addBackpack "ACE_FakeBackpack";
// Primary weapon
_unit addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_unit addWeapon "rhs_m4_compm4";
_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
// Handgun
_unit addMagazine "rhsusf_mag_15Rnd_9x19_FMJ";
_unit addWeapon "rhsusf_weap_m9";
removeBackpack _unit;

// Containers / clothes
_unit addHeadgear "rhsusf_ach_helmet_ocp";
_unit forceAddUniform "rhs_uniform_cu_ocp";
_unit addVest "rhsusf_iotv_ocp_Medic";
_unit addBackpack "rhsusf_assault_eagleaiii_ocp_medic";
clearAllItemsFromBackpack _unit;
{_unit linkItem _x} forEach ["ItemMap","ItemCompass","ItemWatch"];

// Uniform items
_unit addItemToUniform "rhsusf_ANPVS_14";
_unit addItemToUniform "rhsusf_patrolcap_ocp";
{_unit addItemToUniform "ACE_morphine"} count [1,2,3,4,5];
{_unit addItemToUniform "ACE_fieldDressing"} count [1,2,3,4,5,6,7,8,9,10];
// Vest items
_unit addItemToVest "rhs_mag_m18_red";
{_unit addItemToVest "ACE_morphine"} count [1,2,3,4,5,6];
{_unit addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ"} count [1,2];
{_unit addItemToVest "ACE_fieldDressing"} count [1,2,3,4,5,6,7,8,9,10,11,12];
{_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag"} count [1,2,3,4,5,6];
// Backpack items
{_unit addItemToBackpack "ACE_bloodIV"} count [1,2];
{_unit addItemToBackpack "ACE_epinephrine"} count [1,2,3,4];
// Radios
_unit addItemToVest "ACRE_PRC343";