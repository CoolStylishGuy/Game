///scr_punch1_state
image_speed = .1;
combo_state = "punch1";
var punch2_key = keyboard_check_pressed(ord('A'));

switch (sprite_index) {
    case spr_down_place:
        sprite_index = spr_down_attack_place;
        break;
        
    case spr_up_place:
        sprite_index = spr_up_attack_place;
        break;
        
    case spr_left_place:
        sprite_index = spr_left_attack_place;
        break;
        
    case spr_right_place:
        sprite_index = spr_right_attack_place;
        break;
        
}

if (punch2_key) {
    image_index = 0;
    state = scr_punch2_state;
}
