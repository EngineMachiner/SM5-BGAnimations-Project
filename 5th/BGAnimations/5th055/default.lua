local WDX3 if SCREEN_WIDTH > 640 then WDX3 = SCREEN_WIDTH/8.5 else WDX3 = 9 end;
local ScaleVar = _screen.h/480
local tool_sprite = "/BGAnimations/Sprites/5th/1 2x1.png"
return Def.ActorFrame{
	LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
	end,
	LoadActor("../Scripts/TileTool", tool_sprite, 1/2, ScaleVar, false )..{ 
		OnCommand=function(self)
			self:y(self:GetChild("template"):GetHeight()*ScaleVar/2)
			self:x(self:GetChild("template"):GetWidth()*ScaleVar/2)
			self:queuecommand("OneTwoStates")
		end
 	},
		LoadActor("../Scripts/SpiralSpriteZoomIn/Reversed", "/BGAnimations/Sprites/5th/Leave.png", 0)..{  OnCommand=function(self) self:addx(WDX3) end },
}