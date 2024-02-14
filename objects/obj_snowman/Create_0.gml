/// @description Insert description here
// You can write your code in this editor

depth = -y
toppling = false
dropCountMax = 4
dropRadius = 5

function Topple(){
	if !toppling{
		image_index = 0
		sprite_index = spr_snowmanFall
		toppling = true
	}
}