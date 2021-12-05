/// @description Insert description here
// You can write your code in this editor
keyDir = keyboard_check(ord("D"));
keyEsq = keyboard_check(ord("A"));
keyTop = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));


inputDirection = point_direction(0,0,keyDir-keyEsq, keyDown-keyTop);
inputMagnitude = (keyDir - keyEsq !=0) || (keyDown - keyTop !=0) ;


hSpd = lengthdir_x(inputMagnitude*speed_walk, inputDirection);
Vspd = lengthdir_y(inputMagnitude*speed_walk, inputDirection);

x += hSpd;
y += Vspd;

var _oldSprite = sprite_index;

if (inputMagnitude != 0){
	direction = inputDirection;
	sprite_index = spriteRun;
}else{
	sprite_index = spriteIdle;
}
if (_oldSprite != sprite_index){
	localFrame = 0;
}

playerAnimateSprite();
cursor_sprite = spr_crosshair
//image_angle = point_direction(x,y,mouse_x, mouse_y);


