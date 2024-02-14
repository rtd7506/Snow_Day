/// @description Insert description here
// You can write your code in this editor

moveSpd = 3
startX = x
startY = y
targetX = obj_reticle.x
targetY = obj_reticle.y

hitTarget = obj_enemy
collisionRadius = 5
zRange = 5
//dir = point_direction(x,y,target[0],target[1])
//distInit = point_distance(x,y,target[0],target[1])
//rising = true
z = 0
grav = 0
step = 0
drawX=x
drawY=y

stepSpd = 0.035//0.025
sourceX = obj_player.x
sourceY = obj_player.y

function Destroy(){
	instance_destroy()
}
