///scr_move_state
scr_get_input();

if (attack_key) {
    image_index = 0;
    state = scr_attack_state;
}

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

// Control sprite
image_speed = .2;
if (len == 0) image_index = 0;

// Vertical sprites
if (vspd > 0) {
    sprite_index = spr_down_place;
} else if (vspd < 0) {
    sprite_index = spr_up_place;
}

// Horizontal sprites
if (hspd > 0) {
    sprite_index = spr_right_place;
} else if (hspd < 0) {
    sprite_index = spr_left_place;
}

