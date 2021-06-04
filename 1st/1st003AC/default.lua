
--Never ResetParams twice in the same table using BGA_ParamsTweaks.

local t = Def.ActorFrame{}

local params = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/1st/Sprites/Gradients/dance 3x5.png",
		X_num = 1,
		Frame_l = 15,
		Delay = 4,
		Zoom = 5,
		BGMirror = true
	},

	{
		Index = 2,
		File = "/BGAnimations/Resources/1st/Sprites/G 4x4.png",
		Script = "/BGAnimations/Resources/Scripts/1st/SpaceEffects/Stairs.lua",
		Blend = "BlendMode_Add",
		Add = 5,
		Dir = "Out",
		Frames = { 1, 8 }
	}

} 

	BGA_G.Tile( t, params[1] )
	t[#t+1] = loadfile( params[2]["Script"] )( params[2] )

return Def.ActorFrame{ t }