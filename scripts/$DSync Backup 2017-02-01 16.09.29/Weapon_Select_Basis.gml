/*Select the weapon for the player.
Use this script to refer weapons table
Argument0 for which weapon to test.

Current weapons :
0 - Pistol
1 - Shotgun
2 - Machinegun
3 - Flamethrower
4 - /
5 - /
6 - /
7 - /
8 - /
9 - /

*/
switch (argument0) {
    case 0  :                      weapon_select = 0; return (true);                       break;
    case 1  : if (shotgun    = 1) {weapon_select = 1; return (true);} else return (false); break;
    case 2  : if (machinegun = 1) {weapon_select = 2; return (true);} else return (false); break;
    case 3  : if (flame      = 1) {weapon_select = 3; return (true);} else return (false); break;
    default :                                                              return (false)
}
