
local replace = ...

local params = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/5th/Sprites/A 4x3.png",
		Frame_i = 11,
		Frame_l = 12,
		Cleanup = true,
		X_num = { -4, 3 },
		Y_num = 1,
	},

	{
		Index = 2,
		Remove = true
	},

	{
		Index = 3,
		File = "/BGAnimations/Resources/5th/Sprites/AB 4x4.png",
		Frame_i = 10,
		Dir = "Out"
	}

}

	BGA_G.ParTweak( params, replace )

return Def.ActorFrame{

	LoadActor("/BGAnimations/5th001A",params)..{},
	LoadActor("/BGAnimations/Resources/Scripts/SpaceEffects/RoundTrace.lua",params[3])..{}

}