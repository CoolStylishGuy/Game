///scr_punch2_state
var punch3_key = keyboard_check_pressed(ord('A'));
combo_state = "punch2";
image_speed = .1;
switch (sprite_index) {
    case spr_down_attack_place:
        sprite_index = spr_down_attack_place;
        break;
        
    case spr_up_attack_place:
        sprite_index = spr_up_attack_place;
        break;
        
    case spr_left_attack_place:
        sprite_index = spr_left_attack_place;
        break;
        
    case spr_right_attack_place:
        sprite_index = spr_right_attack_place;
        break;
}

if (punch3_key) {
    image_index = 0;
    state = scr_punch3_state;
}
