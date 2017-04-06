/*

Arguments

argument0 = Cursor Action
            1 - Up
            2 - Down
            3 - Select
            4 - Back
            5 - Right
            6 - Left

Screen Parents

  0[Main Menu]
  |--[New Game]
  |  L 1+(Select Episode)
  |     |-- A
  |     |-- B
  |     |-- C
  |     |-- D
  |     L 2+(Select Difficulty)
  |        |-- I am a pretty baby boy
  |        |-- Eh, I'm regular Joe
  |        |-- I ain't no wuss!
  |        |-- I am the embodiment of Kung-Fu
  |        L 3+(Number of Players)
  |           |-- 1 Player
  |           |-- 2 Players
  |           |-- 3 Players
  |           |-- 4 Players
  |           L *Start game* 
  |
  |--[Continue]
  |  L4+(Number of Players)
  |    |-- 1 Player
  |    |-- 2 Players
  |    |-- 3 Players
  |    |-- 4 Players
  |    L *Start game* 
  |
  L 5+[Options]
  |  L 6+[Graphics]
  |  |  |-- Fullscreen = (true/FALSE)
  |  |  L-- Window Width = * (1280)
  |  |  |  L(Set the value)
  |  |  |   
  |  |  L-- Window Height = * (720)
  |  |  |  L(Set the value)
  |  |  |
  |  |  L-- 1:1 Player View = (true/FALSE)
  |  |  |
  |  |  L-- Default
  |  |
  |  L 7+[Audio]
  |  |  L60+Master Volume = (100)
  |  |  |  L(Set the value)
  |  |  |
  |  |  L61+Music Volume = * (75)
  |  |  |  L(Set the value)
  |  |  |
  |  |  L62+SFX Volume = * (100)
  |  |     L(Set the value)
  |  |
  |  L 8+[Controls] WIP
  |  |  |-- Player 1 Control Scheme
  |  |  |-- ??
  |  |  L-- ??
  |  |
  |  L50+[Debug]
  |     L51+[Test Levels]
  |     |  |-- Players = (1 to 4)
  |     |  |-- Key Card Test *warp to test keys*
  |     |  |-- Teleporter Test *warp to test teleporters*
  |     |  L-- More...
  |     |
  |     L52+[Debug Cheats]
  |     |  |
  |     |  L
  |     |
  |     L-- Debug Output = (false)
  |      
  |--[Help]
  |  L 9*show controls*
  |
  L--[Quit]
     L x*exit the game*

*/
var menx = window_get_width()/2; //Get menu X position
var meny = window_get_height()-180; //Get menu Y position

var mlist = 0; //Set the number of options
var mdo = 0; //Button action : 1 = Yes; -1 = No;
var mval = 0; //Value action : 1 = Augment; -1 = Diminish;

switch (menu[0]) { //Let's define the screen text

    case 0 : mdraw[0] = "New Game"; //Main Menu
             mdraw[1] = "Continue";
             mdraw[2] = "Options";
             mdraw[3] = "Help";
             mdraw[4] = "Quit";
             mlist = 4;
             break;

    case 1 : mdraw[0] = "Episode 1"; //Episode Select
             mdraw[1] = "Episode 2";
             mdraw[2] = "Episode 3";
             mdraw[3] = "Episode 4";
             mdraw[4] = "Back";
             mlist = 4;
             break;
             
    case 2 : mdraw[0] = "I am a pretty baby boy"; //Difficulty Select
             mdraw[1] = "Eh, I'm regular Joe";
             mdraw[2] = "I ain't no wuss";
             mdraw[3] = "I am the embodiment of Kung-Fu";
             mdraw[4] = "Back";
             mlist = 4;
             break;
             
    case 3 : mdraw[0] = "1 Player"; //Number of Players
             mdraw[1] = "2 Players";
             mdraw[2] = "3 Players";
             mdraw[3] = "4 Players";
             mdraw[4] = "Back";
             mlist = 4;
             break;
             
    case 4 : mdraw[0] = "1 Player"; //Continue
             mdraw[1] = "2 Players";
             mdraw[2] = "3 Players";
             mdraw[3] = "4 Players";
             mdraw[4] = "Back";
             mlist = 4;
             break;
             
    case 5 : mdraw[0] = "Graphics"; //Options
             mdraw[1] = "Audio";
             mdraw[2] = "Gameplay";
             mdraw[3] = "Debug";
             mdraw[4] = "Back";
             mlist = 4;
             break;
             
    case 6 : mdraw[0] = "Fullscreen = " + string(global.fullscreen); //Graphics options
             mdraw[1] = "< Window Width = " + string(global.windowsize[0]) + " >";
             mdraw[2] = "< Window Height = " + string(global.windowsize[1]) + " >";
             mdraw[3] = "< Player View = " + string(global.playerview) + " >";
             mdraw[4] = "Default";
             mdraw[5] = "Save";
             mlist = 5;
             break;
             
    case 7 : mdraw[0] = "< Master Volume = " + string(global.volume[0]) + " >"; //Audio options
             mdraw[1] = "< Music Volume = " + string(global.volume[1]) + " >";
             mdraw[2] = "< SFX Volume = " + string(global.volume[2]) + " >";
             mdraw[3] = "Default";
             mdraw[4] = "Save";
             mlist = 4;
             break;
             
    case 8 : var p1v = true
             if (global.p1key) {p1v = "True";}else {p1v = "False";}
             mdraw[0] = "Player 1 Using Keyboard = " + string(p1v); //Gameplay options
             mdraw[1] = "Default";
             mdraw[2] = "Save";
             mlist = 2;
             break;
             
    case 9 : mdraw[0] = "This is a Work of Progress"; //Help options
             mdraw[1] = "Back";
             mlist = 1;
             break;
             
    case 50: mdraw[0] = "Test Levels"; //Debug options
             mdraw[1] = "Cheats";
             var dbv = true
             if (global.debugshow) {dbv = "True";}else {dbv = "False";}
             mdraw[2] = "Debug Output = " + string(dbv);
             mdraw[3] = "Back";
             mlist = 3;
             break;
    
    case 51: mdraw[0] = "Key Test"; //Debug Levels
             mdraw[1] = "Teleporter Test";
             mdraw[2] = "More to come... ;)";
             mdraw[3] = "Back";
             mlist = 3;
             break;
}

switch (argument0) { //Control the menu

    case 1 : menu[1] -= 1;                          //Up cursor
             if (menu[1] < 0) menu[1] = mlist;      //Rollback if cursor too high
             break;
             
    case 2 : menu[1] += 1;                          //Down cursor
             if (menu[1] > mlist) menu[1] = 0;      //Rollback if cursor too low
             break;
    
    case 3 : mdo = 1;                               //Select button
             break;
    
    case 4 : mdo = -1;                              //Back cursor
             break;

    case 5 : mval = 1;                               //Right Cursor
             break;
    
    case 6 : mval = -1;                              //Left Cursor
             break;

}

/* CONFIGURING MENU'S FUNCTIONALITY*/

switch (mdo) { //Program the menu and button's actions

    case 1 : switch (menu[0]) {                                                     //When you press the select button
             
                case 0 : switch (menu[1]) {                                         //Main Menu to...
                            case 0 : menu[0] = 1; menu[1] = 0; break;               //New Game (Episode Select)
                            case 1 : menu[0] = 4; menu[1] = 0; break;               //Continue (Player Select)
                            case 2 : menu[0] = 5; menu[1] = 0; break;               //Options
                            case 3 : menu[0] = 9; menu[1] = 0; break;               //Help
                            case 4 : menu[0] = 0; menu[1] = 4; game_end(); break;   //Quit
                         }; break;
                
                case 1 : switch (menu[1]) {                                                                   //New Game (Episode Select) to...
                            case 0 : menu[0] = 2; menu[1] = 0; script_execute(scr_Game_Setup,0,0,1); break;   //Episode 1 : XXX - To difficulty select
                            case 1 : menu[0] = 2; menu[1] = 0; script_execute(scr_Game_Setup,0,0,2); break;   //Episode 2 : XXX - To difficulty select
                            case 2 : menu[0] = 2; menu[1] = 0; script_execute(scr_Game_Setup,0,0,3); break;   //Episode 3 : XXX - To difficulty select
                            case 3 : menu[0] = 2; menu[1] = 0; script_execute(scr_Game_Setup,0,0,4); break;   //Episode 4 : XXX - To difficulty select
                            case 4 : menu[0] = 0; menu[1] = 0; break;                                         //Main Menu
                         }; break;
                         
                case 2 : switch (menu[1]) {                                                                   //New Game (Difficulty Select) to...
                            case 0 : menu[0] = 3; menu[1] = 0; script_execute(scr_Game_Setup,0,1,1); break;   //Easy      - To player select
                            case 1 : menu[0] = 3; menu[1] = 0; script_execute(scr_Game_Setup,0,1,2); break;   //Medium    - To player select
                            case 2 : menu[0] = 3; menu[1] = 0; script_execute(scr_Game_Setup,0,1,3); break;   //Hard      - To player select
                            case 3 : menu[0] = 3; menu[1] = 0; script_execute(scr_Game_Setup,0,1,4); break;   //Very Hard - To player select
                            case 4 : menu[0] = 1; menu[1] = 0; break;                                         //Episode Select
                         }; break;
                         
                case 3 : switch (menu[1]) {                                                                                                         //New Game (Player Select) to...
                            case 0 : menu[0] = 0; menu[1] = 0; script_execute(scr_Game_Setup,0,2,1); script_execute(scr_Game_Setup,1,1,1); break;   //1 Player  - *start the game*
                            case 1 : menu[0] = 0; menu[1] = 0; script_execute(scr_Game_Setup,0,2,2); script_execute(scr_Game_Setup,1,1,1); break;   //2 Players - *start the game*
                            case 2 : menu[0] = 0; menu[1] = 0; script_execute(scr_Game_Setup,0,2,3); script_execute(scr_Game_Setup,1,1,1); break;   //3 Players - *start the game*
                            case 3 : menu[0] = 0; menu[1] = 0; script_execute(scr_Game_Setup,0,2,4); script_execute(scr_Game_Setup,1,1,1); break;   //4 Players - *start the game*
                            case 4 : menu[0] = 2; menu[1] = 0; break;                                                                               //Difficulty Select
                         }; break;
                         
                case 4 : switch (menu[1]) {                             //Continue (Player Select)
                            case 0 : menu[0] = 0; menu[1] = 0; break;   //1 Player  - *start the game from save*
                            case 1 : menu[0] = 0; menu[1] = 0; break;   //2 Players - *start the game from save*
                            case 2 : menu[0] = 0; menu[1] = 0; break;   //3 Players - *start the game from save*
                            case 3 : menu[0] = 0; menu[1] = 0; break;   //4 Players - *start the game from save*
                            case 4 : menu[0] = 0; menu[1] = 1; break;   //Main Menu
                         }; break;
                         
                case 5 : switch (menu[1]) {                             //Options to...
                            case 0 : menu[0] = 6; menu[1] = 0; break;   //Graphic Options
                            case 1 : menu[0] = 7; menu[1] = 0; break;   //Audio Options
                            case 2 : menu[0] = 8; menu[1] = 0; break;   //Gameplay Options
                            case 3 : menu[0] =50; menu[1] = 0; break;   //Debug Menu
                            case 4 : menu[0] = 0; menu[1] = 2; break;   //Main Menu
                         }; break;
                         
                case 6 : switch (menu[1]) {                             //Graphic Options to...
                            case 0 : menu[0] = 6; menu[1] = 0;                  //Full Screen *Set fullscreen*
                                     if (global.fullscreen) {global.fullscreen = false;}
                                     else {global.fullscreen = true;} window_set_fullscreen(global.fullscreen); break;    
                            case 1 : menu[0] = 6; menu[1] = 1; break;           //Window Width Set                      //TO CHANGE
                            case 2 : menu[0] = 6; menu[1] = 2; break;           //Window Height Set                     //TO CHANGE
                            case 3 : menu[0] = 6; menu[1] = 3; break;           //Player View size
                            case 4 : global.fullscreen = false;                 //Default
                                     global.windowsize[0] = 1280;
                                     global.windowsize[1] = 720;
                                     global.playerview = 2;
                                     break;
                            case 5 : menu[0] = 5; menu[1] = 0;                  //Options
                                     script_execute(scr_Settings_INI, 1); break;  
                         }; break;
                         
                case 7 : switch (menu[1]) {                             //Audio Options to...
                            case 0 : menu[0] = 7; menu[1] = 0; break;   //Master Volume Set                     //TO CHANGE
                            case 1 : menu[0] = 7; menu[1] = 1; break;   //Music Volume Set                      //TO CHANGE
                            case 2 : menu[0] = 7; menu[1] = 2; break;   //SFX Volume Set                        //TO CHANGE
                            case 3 : global.volume[0] = 100;            //Default
                                     global.volume[1] = 75;
                                     global.volume[2] = 100;
                                     break;
                            case 4 : menu[0] = 5; menu[1] = 1;          //Options
                                     script_execute(scr_Settings_INI, 1); break;
                         }; break;
                         
                case 8 : switch (menu[1]) {                      //Gameplay Option to...
                            case 0 : menu[0] = 8; menu[1] = 0;   //Player 1 Using Keyboard
                                     if (global.p1key) {global.p1key = false;}
                                     else {global.p1key = true}; break;
                            case 1 : global.p1key = true;        //Options
                                     break;
                            
                            case 2 : menu[0] = 5; menu[1] = 2;   //Options
                                     script_execute(scr_Settings_INI, 1); break;
                         }; break;
                         
                case 9 : switch (menu[1]) {                             //Help to...
                            case 0 : menu[0] = 9; menu[1] = 0; break;   //NOTHING
                            case 1 : menu[0] = 0; menu[1] = 3; break;   //Main Menu
                         }; break;
                         
                case 50: switch (menu[1]) {                                             //Debug to...
                            case 0 : menu[0] =51; menu[1] = 0; break;                   //Test Levels
                            case 1 : menu[0] = 0; menu[1] = 0; break;                   //Cheats
                            case 2 : if (global.debugshow) {global.debugshow = false;}  //Debug Output
                                     else {global.debugshow = true};
                                     show_debug_overlay(global.debugshow); break;
                            case 3 : menu[0] = 5; menu[1] = 3; break;                   //Options
                         }; break;
                
                case 51: switch (menu[1]) {                             //Options to...
                            case 0 : menu[0] = 0; menu[1] = 0; break;   //Level1
                            case 1 : menu[0] = 0; menu[1] = 0; break;   //Level2
                            case 2 : menu[0] = 0; menu[1] = 0; break;   //Level3
                            case 3 : menu[0] =50; menu[1] = 0; break;   //Debug
                         }; break;
                         
              }; break;
              
    case -1: switch (menu[0]) {                                                                              //When you press the back button

                case 0 : menu[0] = 0; menu[1] = 0; break;                                                    //Quit the game
                case 1 : menu[0] = 0; menu[1] = 0; break;                                                    //Main Menu
                case 2 : menu[0] = 1; menu[1] = 0; break;                                                    //Episode Select
                case 3 : menu[0] = 2; menu[1] = 0; break;                                                    //Difficulty Select
                case 4 : menu[0] = 0; menu[1] = 1; break;                                                    //Main Menu
                case 5 : menu[0] = 0; menu[1] = 2; break;                                                    //Main Menu
                case 6 : menu[0] = 5; menu[1] = 0; script_execute(scr_Settings_INI, 2); break;               //Options
                case 7 : menu[0] = 5; menu[1] = 1; script_execute(scr_Settings_INI, 2); break;               //Options
                case 8 : menu[0] = 5; menu[1] = 2; script_execute(scr_Settings_INI, 2); break;               //Options
                case 9 : menu[0] = 0; menu[1] = 3; game_end(); break;                                        //Main Menu
                case 50: menu[0] = 5; menu[1] = 3; break;                                                    //Options
                case 51: menu[0] =50; menu[1] = 0; break;                                                    //Debug

              }; break;

}

/* CONFIGURING OPTION'S VALUE CHANGING FEATURE*/
switch (mval) {

    case 1 : switch (menu[0]) {                                                                                         //Augmenting value
                
                case 6 : switch (menu[1]) {                                                                             //Graphical options
                            
                            case 1 : global.windowsize[0] += 8; break;                                                  //Window Width
                            case 2 : global.windowsize[1] += 8; break;                                                  //Window Height
                            case 3 : global.playerview +=  1; if (global.playerview > 2) global.playerview = 0; break;  //Player View Size
                            
                         }; break;
                case 7 : switch (menu[1]) {                                                                             //Audio options
                            
                            case 0 : if (global.volume[0] < 100) global.volume[0] += 1; break;                          //Master Volume
                            case 1 : if (global.volume[1] < 100) global.volume[1] += 1; break;                          //Music Volume
                            case 2 : if (global.volume[2] < 100) global.volume[2] += 1; break;                          //SFX Volume
                            
                         }; break;
                case 8 : break;
             }; break;
             
    case -1: switch (menu[0]) {                                                                                         //Diminishing value
                
                case 6 : switch (menu[1]) {                                                                             //Graphical options
                            
                            case 1 : global.windowsize[0] -= 8; break;                                                  //Window Width
                            case 2 : global.windowsize[1] -= 8; break;                                                  //Window Height
                            case 3 : global.playerview -=  1; if (global.playerview < 0) global.playerview = 2; break;  //Player View Size
                            
                         }; break;
                case 7 : switch (menu[1]) {                                                                             //Audio options
                            
                            case 0 : if (global.volume[0] > 0) global.volume[0] -= 1; break;                            //Master Volume
                            case 1 : if (global.volume[1] > 0) global.volume[1] -= 1; break;                            //Music Volume
                            case 2 : if (global.volume[2] > 0) global.volume[2] -= 1; break;                            //SFX Volume
                            
                         }; break;
                case 8 : break;
             }; break;
}

draw_set_halign(fa_center);

for (i = 0; i <= mlist; i++) { //Render Text

    if (i = menu[1]) {
        draw_set_colour(c_white);
    } else {
        draw_set_colour(c_ltgray);
    }
    draw_text(menx, meny+(i*20), mdraw[i]);

}
