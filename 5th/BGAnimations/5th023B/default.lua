local ScaleVar = _screen.h/480
return Def.ActorFrame{
	LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
	end,
	LoadActor("../Backgrounds/5th/30 (stretch).png")..{
		OnCommand=cmd(Center;zoom,7*ScaleVar;customtexturerect,0,0,7,7)
	},
		LoadActor("../Scripts/Line/001", "/BGAnimations/Sprites/5th/Snake.png", "/BGAnimations/Sprites/5th/Symbol2.png", 0, ScaleVar)..{},
}