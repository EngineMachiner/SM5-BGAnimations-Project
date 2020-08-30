
local params = {
	File = "/BGAnimations/Resources/5th/Sprites/DABC 4x4.png",
	X_num = { -4, 3 },
	Y_num = { -2, 1 },
	BGMirror = true,
	Commands = { "OneTwoStates", "Mirror" },
	Frame_i = 7,
	Frame_l = 8,
	Delay = 1
}

return Def.ActorFrame{
	LoadActor( "../Resources/Scripts/TileTool.lua", params )..{}
}