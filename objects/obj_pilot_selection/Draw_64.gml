/// @description draw portraits

//switch (selected_value) {
//    case 0:
//        draw_sprite(spr_portrait,0,room_width/2,room_height/2);
//        break;
//    default:
//        // code here
//        break;
//}
display_set_gui_size(room_width,room_height);
draw_sprite(spr_portrait,selected_value,room_width/2,room_height/2);
