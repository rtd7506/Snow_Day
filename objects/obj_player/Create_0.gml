/// @description Insert description here
// You can write your code in this editor

moveSpd = 0.5

xVel = 0
yVel = 0

hasKey = false

//Direction Control
//0=E 1=S 2=W 3=N
dir = 0
aimAngle = point_direction(x,y,obj_reticle.x,obj_reticle.y)
throwDir = 0
moveDir = 1


//Death
fallDir = 0
fallSpd = 1.5
fallFriction = 0.95
game_set_speed(60,gamespeed_fps)

//States
holding = false
throwing = false
rolling = false
falling = false
fallen = false
invincible=false
canRoll=true

//Inputs
xInput=0
yInput=0
savedXInput=0
savedYInput=0 

//Inventory
snowballs = 1
inventorySpacing = 75
snowballCharge = 0
snowballRate = 0.005

function Fall(_fallX,_fallY){
	if !invincible{
		falling = true
		image_index = 0
		fallDir = point_direction(_fallX,_fallY,x,y)
	}
}

animsIdle = [spr_playerIdleOS,spr_playerIdleOF,spr_playerIdleOS,spr_playerIdleOB]
animsRun = [spr_playerRunOS,spr_playerRunOF,spr_playerRunOS,spr_playerRunOB]
animsHold = [spr_playerHoldS,spr_playerHoldF,spr_playerHoldS,spr_playerHoldB]
animsThrow = [spr_playerThrowS,spr_playerThrowF,spr_playerThrowS,spr_playerThrowB]
animsLegsIdle = spr_playerLegsIdle
animsLegsRun = [spr_playerLegsRunS,spr_playerLegsRunF,spr_playerLegsRunS,spr_playerLegsRunB]
animsRoll = [spr_playerRollS,spr_playerRollF,spr_playerRollS,spr_playerRollB]
animsFall = spr_playerFall