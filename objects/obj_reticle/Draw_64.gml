/// @description Insert description here
// You can write your code in this editor
if obj_player.holding && !obj_player.falling{
	draw_sprite_ext(spr_reticle,0,window_mouse_get_x(),window_mouse_get_y(),(1280/camera_get_view_width(view_camera[0])),(720/camera_get_view_height(view_camera[0])),0,c_white,1)
}
///(x-obj_player.x+64)*10,(y-obj_player.y+32)*10
