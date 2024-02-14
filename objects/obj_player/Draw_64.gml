/// @description Insert description here
// You can write your code in this editor
for (var i=0;i<snowballs;i++){
	draw_sprite_ext(spr_snowball,0,75+i*inventorySpacing,window_get_height()-75,15,15,0,c_white,1)
}

draw_set_color(c_grey)
draw_rectangle(50,window_get_height()-35,400,window_get_height()-20,0)
draw_set_color(c_ltgrey)
draw_rectangle(50,window_get_height()-35,lerp(50,400,snowballCharge),window_get_height()-20,0)


