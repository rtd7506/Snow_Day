/// @description Insert description here
// You can write your code in this editor

if !falling{
	xVel = moveX*moveSpd
	yVel = moveY*moveSpd
}else{
	xVel = lengthdir_x(fallSpd,fallDir)
	yVel = lengthdir_y(fallSpd,fallDir)
	if fallSpd > 0.1{
		fallSpd *= fallFriction
	}else{
		fallSpd = 0
	}
}

if (abs(xVel)+abs(yVel)> moveSpd){
	xVel = xVel/sqrt(2)
	yVel = yVel/sqrt(2)
}

//Collisions
if !place_meeting(x+xVel,y,[obj_wall,obj_cover]){
	x+=xVel
}
if !place_meeting(x,y+yVel,[obj_wall,obj_cover]){
	y+=yVel
}

//Attacking

if collision_ellipse(x-detectRangeH,y-detectRangeV,x+detectRangeH,y+detectRangeV,obj_player,0,0) && !collision_line(x,y,obj_player.x,obj_player.y,obj_wall,0,0){//distance_to_object(obj_player) < detectRange
	attacking = true
}else{
	if collision_line(x,y,obj_player.x,obj_player.y,obj_wall,0,0) || distance_to_object(obj_player) > forgetRange{
		attacking = false
	}
}

if attacking{
	holding = true
}else{
	holding = false
}

if holding && canThrow && !falling{
	if irandom_range(0,10) == 0{
		Throw()
	}
}