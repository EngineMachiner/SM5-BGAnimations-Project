
local replace = ...

local tweaks = {

	{
		Index = 1,
		Cleanup = true,
		File = "/BGAnimations/Resources/5th/Backgrounds/CA.png",
		X_num = 1,
		Commands = "Mirror",
		BGMirror = true
	},

	{
		Index = 2,
		File = "/BGAnimations/Resources/5th/Sprites/CAB 5x4.png",
		Cleanup = true,
		Frame_i = 11,
		Frame_l = 11+4,
		Dir = "Left",
		Script = "../Resources/Scripts/Particles.lua"
	}

}

	BGA_G.ParTweak( tweaks, replace )

return Def.ActorFrame{
	LoadActor( "../5th064A", tweaks )..{}
}