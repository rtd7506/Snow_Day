/// @description Insert description here
// You can write your code in this editor

#region Direction Control
if yVel > 0{
	dir = 1
}else if yVel < 0{
	dir = 3
}
if xVel > 0{
	dir = 0
}else if xVel < 0{
	dir = 2
}

//throwDir = 0
aimAngle = point_direction(x,y,obj_reticle.x,obj_reticle.y)
if holding{
	if aimAngle < 45 || aimAngle > 315{
		throwDir = 2
		image_xscale = 1
	}
	if aimAngle > 45 && aimAngle < 135{
		throwDir = 3
	}
	if aimAngle > 135 && aimAngle < 225{
		throwDir = 0
		image_xscale = -1
	}
	if aimAngle > 225 && aimAngle < 315{
		throwDir = 1
	}
}
#endregion
#region Animation
if xVel == 0 && yVel == 0{
	sprite_index = animsIdle[dir]
	legsSprite = animsLegsIdle
}else{
	sprite_index = animsRun[dir]
	legsSprite = animsLegsRun[dir]
}
if holding{
	sprite_index = animsHold[throwDir]
}
if throwing{
	sprite_index = animsThrow[throwDir]
	if image_index > 3{
		throwing = false
	}
}
if rolling{
	sprite_index = animsRoll[dir]
}

if falling{
	sprite_index = animsFall
	if image_index > 3{
		fallen = true
	}
}
if fallen{
	sprite_index = animsFall
	image_index = 3
	image_speed = 0
}

//Time
if falling && fallSpd > 0.2{
	game_set_speed(20,gamespeed_fps)
}else{
	if falling{
		game_set_speed(60,gamespeed_fps)
	}
}
#endregion
if !falling{
	if xVel < 0{
		moveDir = -1
		if !holding{
			image_xscale = -1
		}
	}else if xVel > 0{
		moveDir = 1
		if !holding{
			image_xscale = 1
		}
	}
}
depth = -y

if invincible{
	image_blend=c_grey
}else{
	image_blend=c_white
}

draw_sprite(spr_shadow,0,x,y)
if !rolling{
	draw_sprite_ext(legsSprite,image_index,x,y,moveDir,1,0,c_white,1)
}
draw_self()
