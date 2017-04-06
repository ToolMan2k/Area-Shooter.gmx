/*
This will allow the game to play and stop background music while playing.
This is very useful to create an ambiance filled with joy and beautiful babies

argument0 = Which song to select.
argument1 = Adjust the volume
argument2 = Set the pitch
argument3 = Set the priority

TRACK LISTING :
--------------------------
 0 = No music
 1 = mus_wolf3d_title
 2 = mus_wolf3d_level1
 3 = mus_wolf3d_boss
 4 = mus_temp_circus
 5 = 
 6 = 
 7 = 
 8 = 
 9 = 
10 = 


*/
var music = false;

var volume = (argument1 + global.volume[1] + global.volume[2]) / 3

/* Set music to play */
switch (argument0) {

    case 0 : {
            break;
        }
    
    case 1 : {
            music = asset_get_index("mus_wolf3d_title");
            break;
        }
    
    case 2 : {
            music = asset_get_index("mus_wolf3d_level1");
            break;
        }
    case 3 : {
            music = asset_get_index("mus_wolf3d_boss");
            break;
        }
    case 4 : {
            music = asset_get_index("mus_temp_circus");
            break;
        }
    
}
/* Setting current music */
audio_stop_all();
if (music != false) {
    audio_play_sound(music, argument3, true);
    audio_sound_gain(music, volume, 0);
    audio_sound_pitch(music, argument2);
}
