
--Never ResetParams twice in the same table using BGA_ParamsTweaks.

local t = Def.ActorFrame{}

local params = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/1st/Sprites/J 4x1.png",
		X_num = 0,
		Y_num = 1,
		Zoom = 1/3,
		Frame_l = 4

	},

	{
		Index = 2,
		File = "/BGAnimations/Resources/1st/Videos/SkullsA.mpg",
		Commands = "Blend",
		Blend = "BlendMode_Add"
	}

} 

	PSX_BGA_Globals["BGA_TileTool"]( t, params[1] )
	PSX_BGA_Globals["BGA_TileTool"]( t, params[2] )

return Def.ActorFrame{ t }