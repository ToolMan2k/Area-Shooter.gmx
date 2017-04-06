/*
Arguments

argument0 = Select which operation is done : 0 = Initiation; 1 = Save Changes; 2 = Revert Changes;

*/

ini_open('settings.ini');
switch (argument0) {
case 0 : if (!ini_key_exists('GameCheck', 'setUp')) { //Check if the ini has been made before

    /* Setting Graphical Variables */

    global.fullscreen    = false; //'Fullscreen'
    global.windowsize[0] =  1280; //Window Width
    global.windowsize[1] =   720; //Window Height
    global.playerview    =     2; //0 = 1:1; 1 = 2:1; 2 = Stretch
    
    ini_write_real('Graphics', 'Fullscreen', global.fullscreen);
    ini_write_real('Graphics', 'WindowWidth', global.windowsize[0]);
    ini_write_real('Graphics', 'WindowHeight', global.windowsize[1]);
    ini_write_real('Graphics', 'PlayerViewSize', global.playerview);
    
    
    /* Setting 'Audio' Variables */
    
    global.volume[2]     = 100; //SFX Volume
    global.volume[1]     =  75; //Music Volume
    global.volume[0]     = 100; //Master Volume
    
    ini_write_real('Audio', 'MasterVolume', global.volume[0]);
    ini_write_real('Audio', 'MusicVolume', global.volume[1]);
    ini_write_real('Audio', 'SFXVolume', global.volume[2]);
    
    /* Setting Gameplay Variables */
    
    global.p1key = true; //Set Player 1's controller
    
    ini_write_real('Gameplay', 'Player1Keyboard', global.p1key);
    
    /* Setting Debug Variable */
    
    global.debugshow = false; //Set the debug view
    
    ini_write_real('Debug', 'Output', global.debugshow);
    
    ini_write_real('GameCheck', 'setUp', true);
} else {

    global.fullscreen    = ini_read_real('Graphics', 'Fullscreen', false);
    global.windowsize[0] = ini_read_real('Graphics', 'WindowWidth', 1280);
    global.windowsize[1] = ini_read_real('Graphics', 'WindowHeight', 720);
    global.playerview    = ini_read_real('Graphics', 'PlayerViewSize', 2);

    global.volume[2]     = ini_read_real('Audio', 'SFXVolume', 100);
    global.volume[1]     = ini_read_real('Audio', 'MusicVolume', 75);
    global.volume[0]     = ini_read_real('Audio', 'MasterVolume', 100);
    
    global.p1key         = ini_read_real('Gameplay', 'Player1Keyboard', true);
    
    global.debugshow     = ini_read_real('Debug', 'Output', false);
    
}; break;

case 1 :     ini_write_real('Graphics', 'Fullscreen', global.fullscreen);       //Save data
             ini_write_real('Graphics', 'WindowWidth', global.windowsize[0]);
             ini_write_real('Graphics', 'WindowHeight', global.windowsize[1]);
             ini_write_real('Graphics', 'PlayerViewSize', global.playerview);
             
             ini_write_real('Audio', 'MasterVolume', global.volume[0]);
             ini_write_real('Audio', 'MusicVolume', global.volume[1]);
             ini_write_real('Audio', 'SFXVolume', global.volume[2]);
             
             ini_write_real('Gameplay', 'Player1Keyboard', global.p1key);
             
             ini_write_real('Debug', 'Output', global.debugshow);
             
             break;

case 2 :     global.fullscreen = ini_read_real('Graphics', 'Fullscreen', false);    //Revert Changes
             global.windowsize[0] = ini_read_real('Graphics', 'WindowWidth', 1280);
             global.windowsize[1] = ini_read_real('Graphics', 'WindowHeight', 720);
             global.playerview = ini_read_real('Graphics', 'PlayerViewSize', 2);
             
             global.volume[2] = ini_read_real('Audio', 'SFXVolume', 100);
             global.volume[1] = ini_read_real('Audio', 'MusicVolume', 75);
             global.volume[0] = ini_read_real('Audio', 'MasterVolume', 100);
             
             global.p1key = ini_read_real('Gameplay', 'Player1Keyboard', true);
             
             global.debugshow     = ini_read_real('Debug', 'Output', false);
             
             break;
                          
}


/*Applying all the instant feedback settings*/

window_set_fullscreen(global.fullscreen);
window_set_size(global.windowsize[0], global.windowsize[1]);

ini_close();


