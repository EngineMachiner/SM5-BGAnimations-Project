local params = {

	Index = 1,
	File = "/BGAnimations/Resources/5th/Sprites/HSV/DAB 4x4.png",
	Frame_i = 12,
	Frame_l = 9,
	Commands = "LStates"

}

return Def.ActorFrame{

	loadfile( "/BGAnimations/5th022AD/default.lua" )( params )
	
}