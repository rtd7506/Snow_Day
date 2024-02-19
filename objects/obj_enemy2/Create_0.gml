/// @description Insert description here
// You can write your code in this editor

event_inherited()
moves = [-1,0,1]
moveSpd = 0.3

rolling = false
canRoll = true
function Roll(){
	canRoll = false
	rolling = true
	moveX = irandom_range(-1,1)
	moveY = irandom_range(-1,1)
	alarm[2] = 90
}

//Anims
legsSprite = spr_enemy2LegsIdle
animsIdle = [spr_enemy2IdleS,spr_enemy2IdleF,spr_enemy2IdleS,spr_enemy2IdleB]
animsRun = [spr_enemy2RunS,spr_enemy2RunF,spr_enemy2RunS,spr_enemy2RunB]
animsHold = [spr_enemy2HoldS,spr_enemy2HoldF,spr_enemy2HoldS,spr_enemy2HoldB]
animsThrow = [spr_enemy2ThrowS,spr_enemy2ThrowF,spr_enemy2ThrowS,spr_enemy2ThrowB]
animsLegsIdle = spr_enemy2LegsIdle
animsLegsRun = [spr_enemy2LegsRunS,spr_enemy2LegsRunF,spr_enemy2LegsRunS,spr_enemy2LegsRunB]
animsFall = spr_enemy2Fall
animsRoll = [spr_enemy2RollS,spr_enemy2RollF,spr_enemy2RollS,spr_enemy2RollB]


