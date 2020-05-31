local params = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/5th/Backgrounds/BA.png",
		X_num = 1,
		Commands = "Mirror",
		BGMirror = true,
		ResetParams = true		
	},

	{
		Index = 2,
		Remove = true
	}

}

local params_2 = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/5th/Sprites/BAB 4x4.png",
		Frame_i = 1,
		Frame_l = 2,
		X_pos = -0.5,
		X_num = { -1, 0 },
		Y_num = { -2, 1 },
		Commands = "StairsStates",
		ResetParams = true		
	},

	{
		Index = 2,
		Remove = true
	}

}

local params_3 = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/5th/Sprites/BAB 4x4.png",
		Frame_i = 3,
		Frame_l = 4,
		X_pos = 1.5,
		X_num = { -1, 0 },
		Y_num = { -2, 1 },
		Commands = "StairsStates",
		ResetParams = true		
	},

	{
		Index = 2,
		Remove = true
	}

} 

return Def.ActorFrame{

	LoadActor( "/BGAnimations/5th001A", params )..{},
	LoadActor( "/BGAnimations/5th001A", params_2 )..{},
	LoadActor( "/BGAnimations/5th001A", params_3 )..{}

}