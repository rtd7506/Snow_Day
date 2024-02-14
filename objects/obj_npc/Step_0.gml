/// @description Insert description here
// You can write your code in this editor

event_inherited()

if obj_player.x < x{
	image_xscale = -1
}else{
	image_xscale = 1
}

if obj_player.hasKey{
	text = "Open door"
}