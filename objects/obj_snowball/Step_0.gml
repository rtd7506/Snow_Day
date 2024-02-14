/// @description Insert description here
// You can write your code in this editor 
/*
x += lengthdir_x(moveSpd,dir)
y += lengthdir_y(moveSpd,dir)

*/
step+=stepSpd
if step>1{
	Destroy()
}
x = lerp(startX,targetX,step)
y = lerp(startY,targetY,step)
drawX = x
drawY = y-z
z=(-1*power(step,2)+step)*50
//show_debug_message(z)
depth = obj_player.depth-10//-y

//Collision
if collision_circle(drawX,drawY,collisionRadius,hitTarget,0,0) && z<zRange{
	var target = instance_nearest(drawX,drawY,hitTarget)
	if !target.falling{
		target.Fall(sourceX,sourceY)
		Destroy()
	}
}
if collision_circle(drawX,drawY,collisionRadius,obj_snowman,0,0) && z<zRange{
	instance_nearest(drawX,drawY,obj_snowman).Topple()
	Destroy()
}

if collision_circle(x,y,1,obj_wall,0,0) && z>zRange{
	Destroy()
}