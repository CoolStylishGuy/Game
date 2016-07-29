///scr_move_state
scr_get_input();

// Get direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get length
if (xaxis == 0 && yaxis == 0) {
    len = 0;
} else if (tiptoe_key) {
    // Tiptoe is half speed
    len = spd / 2;
} else {
    len = spd;
}

// Get hspd, vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
x += hspd;
y += vspd;
