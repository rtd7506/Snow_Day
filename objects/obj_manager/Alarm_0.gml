/// @description Spawn Snowball
// You can write your code in this editor

if instance_number(obj_snowball_item) < maxSnowballs{
	instance_create_depth(random_range(obj_player.x-spawnRange,obj_player.x+spawnRange),random_range(obj_player.y-spawnRange,obj_player.y+spawnRange),0,obj_snowball_item)
}
alarm[0] = spawnInterval
