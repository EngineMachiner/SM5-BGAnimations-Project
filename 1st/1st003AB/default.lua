
--Never ResetParams twice in the same table using BGA_ParamsTweaks.

local t = Def.ActorFrame{}

local params = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/1st/Sprites/Gradients/1stA 5x6.png",
		X_num = { -2, 1 },
		Y_num = { -1, 0 },
		Frame_l = 30,
		Zoom = 3,
		Delay = 0.5,
		Commands = { "Mirror" }
	},

	{
		Index = 2,
		File = "/BGAnimations/Resources/1st/Sprites/F 32x4.png",
		Script = "/BGAnimations/Resources/Scripts/1st/SpaceEffects/Stairs.lua",
		Flat = true,
		Dir = "Out",
		fov = 177,
		Add = 7,
		Blend = 'add',
		Commands = { "FramePerSprite" },
		ZoomX = 0.25,
		Frames = { 1, 32 }
	}

} 

	BGA_G.Tile( t, params[1] )
	t[#t+1] = loadfile( params[2]["Script"])( params[2] )

return Def.ActorFrame{ t }