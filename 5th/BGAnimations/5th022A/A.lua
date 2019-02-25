local ScaleVar = _screen.h/480
return Def.ActorFrame{
	LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
	end,
		Def.Sprite{
		Texture = "../Backgrounds/DanceBackgrounds/4 (stretch).png", 
		OnCommand=cmd(Center;x,self:GetWidth()/2;zoom,10*ScaleVar;customtexturerect,0,0,10,10;diffusealpha,1;sleep,4/4;diffusealpha,0;set_tween_uses_effect_delta,true;effectclock,"beat";queuecommand,"On")
	};
		Def.Sprite{
		Texture = "../Backgrounds/DanceBackgrounds/3 (stretch).png", 
		OnCommand=cmd(Center;x,self:GetWidth()/2;zoom,10*ScaleVar;customtexturerect,0,0,10,10;diffusealpha,1;sleep,3/4;diffusealpha,0;sleep,1/4;set_tween_uses_effect_delta,true;effectclock,"beat";queuecommand,"On")
	};
		Def.Sprite{
		Texture = "../Backgrounds/DanceBackgrounds/2 (stretch).png", 
		OnCommand=cmd(Center;x,self:GetWidth()/2;zoom,10*ScaleVar;customtexturerect,0,0,10,10;diffusealpha,1;sleep,2/4;diffusealpha,0;sleep,2/4;set_tween_uses_effect_delta,true;effectclock,"beat";queuecommand,"On")
	};
		Def.Sprite{
		Texture = "../Backgrounds/DanceBackgrounds/1 (stretch).png", 
		OnCommand=cmd(Center;x,self:GetWidth()/2;zoom,10*ScaleVar;customtexturerect,0,0,10,10;diffusealpha,1;sleep,1/4;diffusealpha,0;sleep,3/4;set_tween_uses_effect_delta,true;effectclock,"beat";queuecommand,"On")
	};
}