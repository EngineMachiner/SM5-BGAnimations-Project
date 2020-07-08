
local replace = ...
local params = {

	Index = 1,
	File = "BGAnimations/Resources/5th/Sprites/HSV/DA 4x3.png",
	Frame_i = 1,
	Frame_l = 2

}

	BGA_ParamsTweaks( params, replace )

local params_2 = {


	{ 
		Index = 1,
		File = "/BGAnimations/Resources/5th/Sprites/DA 4x3.png",
		X_num = { -4, 3 },
		Y_num = 1,
		Frame_i = 12,
		ResetParams = true
	},

	{
		Index = 2,
		Remove = true
	}

}

return Def.ActorFrame{

	LoadActor( "/BGAnimations/5th001A", params_2 )..{},
	LoadActor( "/BGAnimations/5th031A", params )..{}

}