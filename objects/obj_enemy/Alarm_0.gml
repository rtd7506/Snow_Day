/// @description Move
// You can write your code in this editor
var move = moves[irandom_range(0,array_length(moves)-1)]
moveX = random_range(-1,1) * move
moveY = random_range(-1,1) * move
//show_debug_message(string(moveX)+","+string(moveY))
if !falling{
	alarm[0] = 60
}