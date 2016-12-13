/*
	Function: FP_JRM_fnc_forceRespawn

	Description:
		Force respawns of all current dead units
		Should be called on all computers if it is a global respawn
		Can also be used to respawn a single unit when called locally

	Parameters:
	_posOrCode - A marker, object, position,  or code (can also be string code) (will be called with [unit, msTime on respawn).
  this function needs to handle calling fp_fnc_spectate on its own
		If position, will be teleported there after exiting spectator
    If code, the code is assumed to handle turning spectator off (FP_fnc_spectate)
		If nil, ace spectator will teleport the unit back to where he was when entering spectator (respawn pos)

    Example:
    (begin example)
        ["respawn_west"] call FP_JRM_fnc_forceRespawn;
        
        [{
          params ["_unit", "_msTime"];
          if (_msTime < CBA_missionTime + 5) then {
            [false] call fp_fnc_spectate;
            player moveInCargo c130;
          };
        }] call FP_JRM_fnc_forceRespawn;
    (end)

	Author:
	Cuel 2015-05-15
*/

#include "script_macros.hpp"

params [["_posOrFunc", ""]];
if (!hasInterface || {!ACE_spectator_isSet}) exitWith {};

if (_posOrFunc isEqualType {}) exitWith {
  // if passing a function it's entirely up to that function to handle exiting spectator etc
  GET_UID_DATA(getPlayerUID player) params ["", ["_timeSinceDeath", 0];
  [player, _timeSinceDeath] call _posOrFunc;
};

[player, true] call FP_fnc_disableWeapons;
[{[player, false] call FP_fnc_disableWeapons}, [], 3] call CBA_fnc_waitAndExecute;
[false] call FP_fnc_spectate;

if (!isNil "_pos") then {
  player setPos ([_pos call CBA_fnc_getPos, 10] call CBA_fnc_randPos);
};
{player reveal [_x, 4]} forEach nearestObjects [player, ["All"], 100];
