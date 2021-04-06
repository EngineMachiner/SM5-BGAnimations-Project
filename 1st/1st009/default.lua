
--Never ResetParams twice in the same table using BGA_ParamsTweaks.

local t = Def.ActorFrame{}

local params = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/1st/Sprites/D 4x2.png",
		X_num = 2,
		Zoom = 0.5,
		Y_num = { -2, 1 },
		Frame_l = 8,
		Commands = { "Color", "MirrorYPerRow", "Blend" },
		Blend = "BlendMode_Add",
		Color = color("#FF0000")
	},

	{
		Index = 2,
		File = "/BGAnimations/Resources/1st/Sprites/E 4x1.png",
		X_num = 1,
		Frame_l = 4,
		Delay = 0.25,
		BGMirror = true,
		Commands = { "Mirror" }
	}

} 

	BGA_G.Tile( t, params[2] )
	BGA_G.Tile( t, params[1] )

return Def.ActorFrame{ t }