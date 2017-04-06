/*
Definition of variables

global.game[0] = Current episode    //Which map to select
global.game[1] = Difficulty         //Which type of enemies / pickups will spawn
global.game[2] = Number of players  //Very obvious

Definition of arguments

argument0 : Action to execute - 0 : Set parameter; 1 : Execute parameters
argument1 : Which parameter to change - When argument0 is at 1, argument1 is useless
argument2 : Which value we set - When argument0 is at 1, argument2 is useless

*/

switch (argument0) {

    case 0 : global.game[argument1] = argument2; break;
    case 1 : health = 1;
             if (global.p1key) {
                global.p1pad = -1;
                global.p2pad =  0;
                global.p3pad =  1;
                global.p4pad =  2;
             } else {
                global.p1pad =  0;
                global.p2pad =  1;
                global.p3pad =  2;
                global.p4pad =  3;
             }
             switch (global.game[0]) {
             case 1 : room_goto(level0); break;
             default: room_goto(level0); break;
             }; break;
}
