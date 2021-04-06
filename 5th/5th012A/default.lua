
local replace = ...
local params = {

	{
		Index = 1,
		Cleanup = true,
		File = "/BGAnimations/Resources/5th/Sprites/AB 4x4.png",
		Frame_i = 5,
		Frame_l = 6,
		X_num = { -4, 3 },
		Y_num = { -2, 1 }
	},

	{
		Index = 2,
		Remove = true
	}

}

	BGA_G.ParTweak( params, replace )

return Def.ActorFrame{
	
	LoadActor("/BGAnimations/5th001A", params)..{}

}