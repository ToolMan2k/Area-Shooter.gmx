var success = false;
var rng = 0
while (success = false) {
    randomize()
    rng = random(4)
    if ((0 < rng <= 1) && instance_exists(Player1)) {return global.target1; success = true}
    if ((1 < rng <= 2) && instance_exists(Player2)) {return global.target2; success = true}
    if ((2 < rng <= 3) && instance_exists(Player1)) {return global.target3; success = true}
    if ((3 < rng <= 4) && instance_exists(Player2)) {return global.target4; success = true}
}
