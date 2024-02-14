/// @description Insert description here
// You can write your code in this editor
randomize()

moveSpd = 0.5
xVel = 0
yVel = 0

//Movement
moves = [-1,0,0,0,1]
moveX = 0
moveY = 0
moveDir = 1
throwDir = 0
dir = 0
moveAngle = 0
alarm[0] = 60

fallDir = 0
fallSpd = 1.5
fallFriction = 0.95

//States
attacking = false
holding = false
throwing = false
falling = false
fallen = false

//Attacking
detectRange = 40
forgetRange = 60
aimAngle = point_direction(x,y,obj_player.x,obj_player.y)
throwDir = 0
throwCooldown = 120
canThrow = true
invincible = false

function Throw(){
	canThrow = false
	alarm[1] = throwCooldown
	var ball = instance_create_depth(x,y-5,0,obj_enemySnowball)
	throwing = true
	image_index = 0
}

function Fall(_fallX,_fallY){
	if !invincible{
		falling = true
		image_index = 0
		fallDir = point_direction(_fallX,_fallY,x,y)
		obj_manager.enemiesFelled += 1
		if obj_manager.enemiesFelled >= obj_manager.enemyCount{
			obj_camera.End(self)
		}
	}
}

//Anims
legsSprite = spr_playerLegsIdle
animsIdle = [spr_enemyIdleS,spr_enemyIdleF,spr_enemyIdleS,spr_enemyIdleB]
animsRun = [spr_enemyRunS,spr_enemyRunF,spr_enemyRunS,spr_enemyRunB]
animsHold = [spr_enemyHoldS,spr_enemyHoldF,spr_enemyHoldS,spr_enemyHoldB]
animsThrow = [spr_enemyThrowS,spr_enemyThrowF,spr_enemyThrowS,spr_enemyThrowB]
animsLegsIdle = spr_enemyLegsIdle
animsLegsRun = [spr_enemyLegsRunS,spr_enemyLegsRunF,spr_enemyLegsRunS,spr_enemyLegsRunB]
animsFall = spr_enemyFall

