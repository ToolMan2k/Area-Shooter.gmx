/*
Window Size : 1280*720

1 Player ---

P1 : V = 640*360; H = 1280*720; + = 0*0; ] = 320*180

2 Players ---

P1 : V = 320*360; H = 640*720; + =   0*0; ] = 160*180
P2 : V = 320*360; H = 640*720; + = 640*0; ] = 160*180

3 Players ---

P1 : V = 640*360; H =  640*360; + =   0*0 ; ] = 320*180
P2 : V = 640*360; H =  640*360; + = 640*0 ; ] = 320*180
P3 : V = 640*180; H = 1280*360; + =  0*360; ] = 320*90

4 Players ---

P1 : V = 640*360; H = 640*360; + =   0*0  ; ] = 320*180
P2 : V = 640*360; H = 640*360; + = 640*0  ; ] = 320*180
P3 : V = 640*360; H = 640*360; + =   0*360; ] = 320*180
P4 : V = 640*360; H = 640*360; + = 640*360; ] = 320*180

*/


/*Set default values*/

view_wview[0] = 1280;
view_hview[0] = 720;
view_wport[0] = 1280;
view_hport[0] = 720;
view_hborder[0] = 0;       
view_vborder[0] = 0;
view_xport[0] = 0;
view_yport[0] = 0;       
view_visible[0] = true;


view_object[1] = Player1; //1
view_object[2] = Player2; //2
view_object[3] = Player3; //3
view_object[4] = Player4; //4

view_visible[1] = false; //1
view_visible[2] = false; //2
view_visible[3] = false; //3
view_visible[4] = false; //4

view_enabled = true;

/*Selecting current players*/

switch (argument0) {
    case 1  : {
        view_wview[1] = 640;
        
        view_hview[1] = 360;
        
        view_wport[1] = 1280;
        
        view_hport[1] = 720;
        
        view_hborder[1] = 320;
        
        view_vborder[1] = 180;
        
        view_xport[1] = 0;
        
        view_yport[1] = 0;
        
        view_visible[1] = true;
        
    }; break;
    case 2  : {
        view_wview[1] = 320;
        view_wview[2] = 320;
                
        view_hview[1] = 360;
        view_hview[2] = 360;
        
        view_wport[1] = 640;
        view_wview[2] = 640;
        
        view_hport[1] = 720;
        view_hport[2] = 720;
        
        view_hborder[1] = 160;
        view_hborder[2] = 160;
        
        view_vborder[1] = 180;
        view_vborder[2] = 180;
        
        view_xport[1] = 0;
        view_xport[2] = 640;
        
        view_yport[1] = 0;
        view_yport[2] = 0;
        
        view_visible[1] = true;
        view_visible[2] = true;
        
    }; break;
    case 3  : {
        view_wview[1] = 640;
        view_wview[2] = 640;
        view_wview[3] = 640;
                
        view_hview[1] = 360;
        view_hview[2] = 360;
        view_hview[3] = 180;
        
        view_wport[1] = 640;
        view_wport[2] = 640;
        view_wport[3] = 1280;
        
        view_hport[1] = 360;
        view_hport[2] = 360;
        view_hport[3] = 360;
        
        view_hborder[1] = 320;
        view_hborder[2] = 320;
        view_hborder[3] = 320;
        
        view_vborder[1] = 180;
        view_vborder[2] = 180;
        view_vborder[3] = 90;
        
        view_xport[1] = 0;
        view_xport[2] = 640;
        view_xport[3] = 0;
        
        view_yport[1] = 0;
        view_yport[2] = 0;
        view_yport[3] = 360;
        
        view_visible[1] = true;
        view_visible[2] = true;
        view_visible[3] = true; 
    }; break;
    case 4  : {
        view_wview[1] = 640;
        view_wview[2] = 640;
        view_wview[3] = 640;
        view_wview[4] = 640;
        
        view_hview[1] = 360;
        view_hview[2] = 360;
        view_hview[3] = 360;
        view_hview[4] = 360;
        
        view_wport[1] = 640;
        view_wport[2] = 640;
        view_wport[3] = 640;
        view_wport[4] = 640;
        
        view_hport[1] = 360;
        view_hport[2] = 360;
        view_hport[3] = 360;
        view_hport[4] = 360;
        
        view_hborder[1] = 320;
        view_hborder[2] = 320;
        view_hborder[3] = 320;
        view_hborder[4] = 320;
        
        view_vborder[1] = 180;
        view_vborder[2] = 180;
        view_vborder[3] = 180;
        view_vborder[4] = 180;
        
        view_xport[1] = 0;
        view_xport[2] = 640;
        view_xport[3] = 0;
        view_xport[4] = 640;
        
        view_yport[1] = 0;
        view_yport[2] = 0;
        view_yport[3] = 360;
        view_yport[4] = 360;
        
        view_visible[1] = true;
        view_visible[2] = true;
        view_visible[3] = true;
        view_visible[4] = true; 
    }; break;
}

