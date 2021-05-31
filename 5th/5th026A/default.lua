
local params = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/5th/Sprites/A 4x3.png",
		X_num = { -4, 3 },
		Y_num = { -2, 2 },
		Frame_i = 9,
		Frame_l = 10,
		Commands = { "Move", "StairsStates" },
		Y_coord = -1,
		Cleanup = true
	},

	{
		Index = 2,
		Remove = true
	}

}

local params_2 = {

	Index = 1,
	File = "/BGAnimations/Resources/5th/Sprites/AB 4x4.png",
	Frame_i = 3,
	Frame_l = 4,
	Dir = "Down"
}

return Def.ActorFrame{

	loadfile( "/BGAnimations/5th001A/default.lua" )( params ),
	loadfile( "/BGAnimations/Resources/Scripts/Particles.lua" )( params_2 )

}