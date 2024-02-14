/// @description Insert description here
// You can write your code in this editor


if inEnd{
	var camX = lerp(obj_player.x,followTarget.x,endStep)
	var camY = lerp(obj_player.y,followTarget.y,endStep)
	if toPlayer2{
		if endStep > 0{
			endStep -= 0.05
		}
		game_set_speed(60,gamespeed_fps)
	}else{
		if endStep < 1{
			endStep += 0.1
		}else{
			game_set_speed(20,gamespeed_fps)
		}
	}
	if followTarget.fallSpd < 0.2 && !toPlayer{
		game_set_speed(60,gamespeed_fps)
		toPlayer = true
		alarm[0] = 20
	}
	camera_set_view_pos(view_camera[0],camX-camera_get_view_width(view_camera[0])/2,camY-camera_get_view_height(view_camera[0])/2-5)
}else{
	camera_set_view_pos(view_camera[0],followTarget.x-camera_get_view_width(view_camera[0])/2,followTarget.y-camera_get_view_height(view_camera[0])/2-5)
}

if inEnd && toPlayer2{
	if keyboard_check_pressed(vk_enter){
		room_restart()
	}
}