
--Never ResetParams twice in the same table using BGA_ParamsTweaks.

local t = Def.ActorFrame{}

local params = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/1st/Sprites/H 5x4.png",
		Frame_i = 16,
		X_num = { -6, 5 },
		Y_num = { -3, 2 },
		Color = "Rainbow",
		Blend = 'add',
		Commands = { "SpinFrame" },
		Zoom = 0.93,
		Script = "/BGAnimations/Resources/Scripts/AFTSpin.lua"
	},

	{
		Index = 2,
		File = "/BGAnimations/Resources/1st/Sprites/H 5x4.png",
		X_num = 5,
		Y_num = { -2, 1 },
		Frame_i = 5
	}

} 

	BGA_G.Tile( t, params[2] )
	t[#t+1] = loadfile( params[1].Script )( params[1] )

return Def.ActorFrame{ t }