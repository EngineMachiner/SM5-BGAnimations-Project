
local t = Def.ActorFrame{}

local tweaks = {


	{ 
		Index = 1,
		Remove = true
	},

	{
		Index = 2,
		File = {"/BGAnimations/Resources/5th/Backgrounds/ABC.png",
				"/BGAnimations/Resources/5th/Backgrounds/ABC2.png"
			},
		Y_coord = 1,
		Commands = "Move"
	}

}

	t[#t+1] = LoadActor( "/BGAnimations/5th002A", tweaks )..{}

return Def.ActorFrame{ t }