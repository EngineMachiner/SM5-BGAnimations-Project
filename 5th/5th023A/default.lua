
local replace = ...

local params = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/5th/Sprites/AB 4x4.png",
		X_num = { -4, 3 },
		Y_num = { -2, 1 },
		Frame_i = 13,
		Commands = { "Move", "Blink" },
		Cleanup = true
	},

	{
		Index = 2,
		Remove = true
	}

}
	

local params_2 = {

	Index = 1,
	File = "/BGAnimations/Resources/5th/Sprites/A 4x3.png",
	Frame_i = 1,
	Frame_l = 2,
	Shade = true,
	Dir = "Down"

}

return Def.ActorFrame{

	loadfile( "/BGAnimations/5th001A/default.lua" )( params ),
	loadfile( "/BGAnimations/Resources/Scripts/Particles.lua" )( params_2 )

}