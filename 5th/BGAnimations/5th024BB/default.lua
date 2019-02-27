local ScaleVar = _screen.h/480
return Def.ActorFrame{

	LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
	end,
	
	LoadActor("../Backgrounds/5th/31 (stretch).png")..{
		OnCommand=cmd(Center;zoom,12*ScaleVar;customtexturerect,0,0,12,12)
	};

	LoadActor("../Scripts/InnerEffect/CircleInSpin", "/BGAnimations/Sprites/5th/3.png", false )..{},
	
}