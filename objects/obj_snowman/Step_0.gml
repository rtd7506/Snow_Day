/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_player) && obj_player.rolling{
	Topple()
}

if toppling{
	if image_index > 6{
		for (var i=0;i<irandom_range(2,dropCountMax);i++){
			instance_create_depth(x+random_range(-dropRadius,dropRadius),y+random_range(-dropRadius,dropRadius),0,obj_snowball_item)
		}
		instance_destroy()
	}
}
