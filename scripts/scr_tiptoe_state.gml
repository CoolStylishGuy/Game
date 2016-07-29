///scr_tiptoe_state
// Get direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get length
if (xaxis == 0 && yaxis == 0) {
    len = 0;
} else {
    len = spd / 2;
}

// Get hspd, vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
x += hspd;
y += vspd;
