/*Select the weapon for the player.
Argument0 for bumper select (0 = Goto direct; 1 = Down (L); 2 = Up (R))
Argument1 for direct select (0-9 = Weapons)

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
    case 2  : {
        /*This is for up*/
        for (i = weapon_select + 1; i != weapon_select; i++) {
            if (i > 9) i = 0;
            var spawn = (Weapon_Select_Basis(i))
            if (spawn = true) break;
        }
    }; break;
    
    case 1  : {
        /*This is for down*/
        for (i = weapon_select - 1; i != weapon_select; i--) {
            if (i < 0) i = 9;
            var spawn = (Weapon_Select_Basis(i))
            if (spawn = true) break;
        }
    }; break;
    
    default : {
        return (argument1)
    }
}
