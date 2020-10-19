/// @description Insert description here
// You can write your code in this editor
zmov+=bull_speed;
yspeed += grav;
ymov+=yspeed;
y=ymov

if(y>800){
	//do the thing	
	var enemyCount = instance_number(EnemyParent);
	for(i=0;i<enemyCount;i++){
		var _inst = instance_find(EnemyParent, i);
		_inst.hp-= 10;
	}
	
	instance_destroy();
}