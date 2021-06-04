
local tweaks = {

	{
		Index = 1,
		Commands = "Mirror"
	},

	{
		Index = 2,
		File = "/BGAnimations/Resources/1st/Sprites/G 4x4.png",
		X_num = { -6, 5 },
		Y_num = { -3, 2 },
		Frames = { 9, 16 },
		ResetParams = true,
		Blend = "BlendMode_Add",
		BGMirror = true,
		Script = "/BGAnimations/Resources/Scripts/TileTool.lua"
	}

}

return Def.ActorFrame{
	loadfile( "/BGAnimations/1stBG001/default.lua" )( tweaks )
}