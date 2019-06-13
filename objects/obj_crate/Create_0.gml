// Do not allow crates to overlap
if (instance_place(x,y, obj_crate) || instance_place(x,y, obj_player))
{
	instance_destroy();
}

this = id;

spawn_gem = false;
collisons = false;
hsp = 0; 
vsp = 0;
rsp = 0;

hp = 30;
hover = false;

grounded = false;

index = 0;
