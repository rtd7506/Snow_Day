/// @description Insert description here
// You can write your code in this editor

if sprite_index == spr_snowballSpawn && image_index > 5{
	sprite_index = spr_snowball
	image_speed = 0
	image_index = irandom_range(0,3)
}

if place_meeting(x,y,obj_player){
	if obj_player.snowballs<5{
		obj_player.snowballs += 1
	}
	instance_destroy()
}
