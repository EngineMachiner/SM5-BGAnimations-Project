local ScaleVar = _screen.h/480
return Def.ActorFrame{
	LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
	end,
	LoadActor("../Backgrounds/5th/6 (stretch).png")..{
		OnCommand=cmd(Center;zoom,7*ScaleVar;customtexturerect,0,0,7,7;set_use_effect_clock_for_texcoords,true;effectclock,'beat')
	};
		LoadActor("../Scripts/Line/001", "/BGAnimations/Sprites/5th/Cake.png", "/BGAnimations/Sprites/5th/Burger.png", 0, ScaleVar)..{},
}