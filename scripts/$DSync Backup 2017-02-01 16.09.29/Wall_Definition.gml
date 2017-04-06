/*
Check surrounding walls, then creating correct tile textures.
argument0 choose tileset. If argument0 = none, don't change tileset
argument1 force specific tile to use.

+-----+-----+-----+-----+-----+
| NUM | 8 > | 4 < | 2 v | 1 ^ |
+-----+-----+-----+-----+-----+
|  0  |     |     |     |     |
|  1  |     |     |     |  X  |
|  2  |     |     |  X  |     |
|  3  |     |     |  X  |  X  |
|  4  |     |  X  |     |     |
|  5  |     |  X  |     |  X  |
|  6  |     |  X  |  X  |     |
|  7  |     |  X  |  X  |  X  |
|  8  |  X  |     |     |     |
|  9  |  X  |     |     |  X  |
| 10  |  X  |     |  X  |     |
| 11  |  X  |     |  X  |  X  |
| 12  |  X  |  X  |     |     |
| 13  |  X  |  X  |     |  X  |
| 14  |  X  |  X  |  X  |     |
| 15  |  X  |  X  |  X  |  X  |
+-----+-----+-----+-----+-----+
*/
var wallcheck = 0;

if (argument1 = -1) {
    if (collision_point( x   , y-1 , Wall_Block, false, true )) {wallcheck += 1}
    if (collision_point( x   , y+17, Wall_Block, false, true )) {wallcheck += 2}
    if (collision_point( x-1 , y   , Wall_Block, false, true )) {wallcheck += 4}
    if (collision_point( x+17, y   , Wall_Block, false, true )) {wallcheck += 8}
} else { wallcheck = argument1 }

//Setting tile
if (argument0 != "none") {
sprite_index = asset_get_index(argument0);
image_index  = wallcheck;
image_speed  = 0;
}
