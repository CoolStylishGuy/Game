///scr_attack_state
image_speed = .01;

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
