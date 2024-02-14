/// @description Insert description here
// You can write your code in this editor
if obj_player.holding && !obj_player.falling{
	draw_set_color(c_ltgray)
	depth = obj_player.depth+5
	for (var i=0.15; i<1;i+=0.15){
		//draw_sprite(spr_arc,0,lerp(obj_player.x,x,i),lerp(obj_player.y-5,y,i)-(-1*power(i,2)+i)*50)
		draw_circle(lerp(obj_player.x,x,i),lerp(obj_player.y-5,y,i)-(-1*power(i,2)+i)*50,1,false)
	}
	draw_set_color(c_white)
}
//z=(-1*power(step,2)+step)*50