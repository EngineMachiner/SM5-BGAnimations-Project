local params = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/5th/Sprites/DA 4x3.png",
		Frame_i = 7,
		Cleanup = true,
		Commands = "Move",
		Y_coord = -1,
		X_num = { -4, 3 },
		Y_num = { -1, 2 },
		HurryTweenBy = 2
	},

	{
		Index = 2,
		Remove = true
	}

}

local params_2 = {

	File = "/BGAnimations/Resources/5th/Sprites/DAB 4x4.png",
	Frame_i = 1,
	Frame_l = 4

}

return Def.ActorFrame{

	LoadActor("/BGAnimations/5th001A",params)..{},
	LoadActor("../Resources/Scripts/WallBumps.lua", params_2)..{}
	
}