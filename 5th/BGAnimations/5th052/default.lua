local ScaleVar = _screen.h/480
local file = "../Backgrounds/32 (stretch).png"
local tool_sprite = "../Sprites/hearts 2x1.png"
return Def.ActorFrame{
	LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
	end,
	LoadActor(file)..{
		OnCommand=cmd(Center;customtexturerect,0,0,8,8;zoom,8*ScaleVar)
	};
	LoadActor("../Backgrounds/Tool.lua", tool_sprite, 0, ScaleVar, false )..{ 
		OnCommand=function(self)
			self:y(self:GetChild("template"):GetHeight()*ScaleVar/2)
			self:x(self:GetChild("template"):GetWidth()*ScaleVar/2)
			self:queuecommand("SpinY")
		end
 	},
}