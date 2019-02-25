local ScaleVar = _screen.h/480
return Def.ActorFrame{
	LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
	end,
	LoadActor("../Backgrounds/19 (stretch).png")..{
		OnCommand=cmd(Center;zoom,7*ScaleVar;customtexturerect,0,0,7,7)
	},
	LoadActor("../ParticleEffects/ParticlesDown/2","/BGAnimations/Sprites/1.png")..{},
	LoadActor("../ParticleEffects/ParticlesDown/2","/BGAnimations/Sprites/2.png")..{}
}