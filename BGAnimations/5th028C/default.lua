local tweaks = {

	Index = 3,
	Script = "../Resources/Scripts/Z_Effects/R_WhirlTrace"
	
}

local t = Def.ActorFrame{

	LoadActor("/BGAnimations/5th028B",tweaks)..{}

}

return Def.ActorFrame{ t }