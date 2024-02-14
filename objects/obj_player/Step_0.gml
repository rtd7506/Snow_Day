/// @description Insert description here
// You can write your code in this editor

if rolling{
	xInput=(keyboard_check(ord("D"))-keyboard_check(ord("A")))
	yInput=(keyboard_check(ord("S"))-keyboard_check(ord("W")))
	if (xInput == 0 && yInput == 0){
		xInput=savedXInput
		yInput=savedYInput
	}
	 
}else{
	xInput=(keyboard_check(ord("D"))-keyboard_check(ord("A")))
	yInput=(keyboard_check(ord("S"))-keyboard_check(ord("W")))
}


if !falling{
	xVel=xInput*moveSpd
	yVel=yInput*moveSpd
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
if place_meeting(x,y+yVel,obj_door) && hasKey{
	instance_destroy(obj_door)
	audio_play_sound(snd_door,0,0)
}
if place_meeting(x,y,obj_snowman2){
	room_goto(rm_start)
}



if !place_meeting(x+xVel,y,[obj_wall,obj_cover]){
	x+=xVel
}
if !place_meeting(x,y+yVel,[obj_wall,obj_cover]){
	y+=yVel
}

//Interaction
if distance_to_object(instance_nearest(x,y,obj_npc)) < 1.5 && keyboard_check_pressed(vk_space){
	var npc = instance_nearest(x,y,obj_npc)
	npc.Speak()
}

if place_meeting(x,y,obj_key){
	instance_destroy(obj_key)
	hasKey = true
	audio_play_sound(snd_pickup,0,0)
}



if !(xInput == 0 && yInput == 0){
	savedXInput=xInput
	savedYInput=yInput
}

if !rolling && keyboard_check_pressed(vk_space) && canRoll && !falling{
	rolling = true
	image_index=0
	canRoll=false
	alarm[0]=90
}

if rolling{
	moveSpd=0.85
	invincible=true
	holding=false
	if image_index = 4{
		rolling=false
		invincible=false
	}
}else{
	moveSpd=0.5
	holding = keyboard_check(vk_shift) && snowballs > 0  
}

if mouse_check_button(mb_left) && holding && !throwing && !falling{//_pressed
	var ball = instance_create_depth(x,y-5,0,obj_snowball)
	throwing = true
	image_index = 0
	snowballs -= 1
}

if keyboard_check_pressed(vk_enter){
	room_restart()
}

if !rolling && !(xVel == 0 && yVel == 0){
	if snowballs < 5{
		snowballCharge += snowballRate
		if snowballCharge >= 1{
			snowballCharge = 0
			if snowballs < 5{
				snowballs+=1
			}
		}
	}else{
		snowballCharge = 0
	}
}