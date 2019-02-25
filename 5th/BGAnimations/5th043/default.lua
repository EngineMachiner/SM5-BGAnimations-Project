local ScaleVar = _screen.h/480
return Def.ActorFrame{
	LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
	end,
	LoadActor("../Sprites/ClothesSprites/BG.png")..{ OnCommand=cmd(Center;zoom,ScaleVar) };
	LoadActor("../Sprites/ClothesSprites/BG.png")..{ OnCommand=cmd(Center;zoom,ScaleVar;rotationy,180;x,self:GetX()+self:GetWidth()) };
	LoadActor("../Sprites/ClothesSprites/BG.png")..{ OnCommand=cmd(Center;zoom,ScaleVar;rotationy,180;x,self:GetX()-self:GetWidth()) };
	LoadActor("A.lua")..{};
	LoadActor("A.lua")..{ OnCommand=cmd(x,1495;rotationy,180) };
	LoadActor("A.lua")..{ OnCommand=cmd(x,215*ScaleVar;rotationy,180) };
}