local ScaleVar = _screen.h/480
local file = "/BGAnimations/Sprites/Star.png"
return Def.ActorFrame{

	LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
	end,
	
	LoadActor("../Backgrounds/31 (stretch).png")..{
		OnCommand=cmd(Center;zoom,12*ScaleVar;customtexturerect,0,0,12,12)
	};

	LoadActor("../ParticleEffects/InnerEffect/CircleInSpin", file, false )..{},
	
}