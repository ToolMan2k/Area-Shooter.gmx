/*
This will allow the game to play and stop background music while playing.
This is very useful to create an ambiance filled with joy and beautiful babies

argument0 = Which song to select.

TRACK LISTING :
--------------------------
 0 = No music
 1 = mus_wolf3d_title
 2 = mus_wolf3d_level1
 3 = mus_wolf3d_boss
 4 = 
 5 = 
 6 = 
 7 = 
 8 = 
 9 = 
10 = 


*/
var music = false
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
    
}
/* Setting current music */
audio_stop_all();
if (music != false) {
    audio_play_sound(music, 100, true);
}
