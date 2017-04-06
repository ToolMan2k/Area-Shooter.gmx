/*
This will allow the game to play sound effects while playing.
This is very useful to create an ambiance filled with cute ninja corgis!

argument0 = Which sound to select.
argument1 = Adjust the volume
argument2 = Set the pitch
argument3 = Set the priority

TRACK LISTING :
--------------------------
 0 = No music
 1 = snd_mercs_throw
 2 = snd_mercs_door_open
 3 = snd_mercs_explosion
 4 = snd_mercs_pickup
 5 = snd_gauntlet_key
 6 = snd_pistol_shot
 7 = snd_machinegun_shot
 8 = snd_att3_shotgun_shot
 9 = snd_temp_horn
10 = snd_temp_horror
11 = snd_gauntlet_menumov
12 = snd_gauntlet_menusel
13 = snd_gauntlet_menubak
14 = snd_gauntlet_teleport


*/
var music = false

var volume = (argument1 + global.volume[0] + global.volume[2]) / 3

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
    case 5 : {
            music = asset_get_index("snd_gauntlet_key");
            break;
        }
    case 6 : {
            music = asset_get_index("snd_pistol_shot");
            break;
        }
    case 7 : {
            music = asset_get_index("snd_machinegun_shot");
            break;
        }
    case 8 : {
            music = asset_get_index("snd_att3_shotgun_shot");
            break;
        }
    case 9 : {
            music = asset_get_index("snd_temp_horn");
            break;
        }
    case 10 : {
            music = asset_get_index("snd_temp_horror");
            break;
        }
    case 11 : {
            music = asset_get_index("snd_gauntlet_menumov");
            break;
        }
    case 12 : {
            music = asset_get_index("snd_gauntlet_menusel");
            break;
        }
    case 13 : {
            music = asset_get_index("snd_gauntlet_menubak");
            break;
        }
    case 14 : {
            music = asset_get_index("snd_gauntlet_teleport");
            break;
        }
}
/* Setting current sound */
if (music != false) {
    audio_play_sound(music, argument3, false);
    audio_sound_gain(music, volume, 0);
    audio_sound_pitch(music, argument2);
}
