
local params = { 
	File = "/BGAnimations/Resources/5th/Sprites/DABC 4x4.png",
	Frame_i = 3,
	Frame_l = 4
}

return Def.ActorFrame{

	LoadActor( "/BGAnimations/5th007B" )..{},
	LoadActor("../Resources/Scripts/LineXY.lua", params)..{}

}