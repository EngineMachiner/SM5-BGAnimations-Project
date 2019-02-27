local ScaleVar = _screen.h/480

local Backgrounds = {

	"/BGAnimations/Backgrounds/5th/27 (stretch).png",
	"/BGAnimations/Backgrounds/5th/8 (stretch).png",
    "/BGAnimations/Backgrounds/5th/64 (stretch).png",

}

local t = Def.ActorFrame{

    LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
    end

}
	-- Script

	for i = #Backgrounds, 1, - 1 do
		t[#t+1] = LoadActor("../Scripts/SplitScreen", Backgrounds )..{}
	end



return t