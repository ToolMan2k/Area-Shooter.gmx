/*
This will allow the game to play sound effects while playing.
This is very useful to create an ambiance filled with cute ninja corgis!

argument0 = Which sound to select to select.

TRACK LISTING :
--------------------------
 0 = No music
 1 = snd_mercs_throw
 2 = snd_mercs_door_open
 3 = snd_mercs_explosion
 4 = snd_mercs_pickup
 5 = 
 6 = 
 7 = 
 8 = 
 9 = 
10 = 


*/
var music = false
/* Set sound to play */
switch (argument0) {

    case 0 : {
            break;
        }
    case 1 : {
            music = asset_get_index("snd_mercs_throw");
            break;
        }
    case 2 : {
            music = asset_get_index("snd_mercs_door_open");
            break;
        }
    case 3 : {
            music = asset_get_index("snd_mercs_explosion");
            break;
        }
    case 4 : {
            music = asset_get_index("snd_mercs_pickup");
            break;
        }
}
/* Setting current sound */
if (music != false) {
    audio_play_sound(music, 50, false);
}
