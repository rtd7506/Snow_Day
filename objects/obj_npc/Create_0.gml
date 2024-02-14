/// @description Insert description here
// You can write your code in this editor

function Speak(){
	/*
	for (var i=0;i<instance_number(obj_textbox);++i){
		instance_destroy(instance_find(obj_textbox,1))
	}
	*/
	if !instance_exists(obj_textbox){
		instance_create_depth(x,y-8,-1000,obj_textbox)
	}
}

text = "Go EAST for key"
