
local params = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/5th/Sprites/CAB 5x4.png",
		X_num = 5,
		Y_num = { -2, 1 },
		Frame_i = 10,
		ResetParams = true
	},

	{
		Index = 2,
		File = "/BGAnimations/Resources/5th/Sprites/CAB 5x4.png",
		Frame_i = 1,
		Clockwise = true
	},

	{	
		Index = 3,
		File = "/BGAnimations/Resources/5th/Sprites/CAB 5x4.png",
		Frame_i = 1,
		Dir = "Out",
		Clockwise = false
	}

}

	BGA_ParamsTweaks(params,tweaks)
	
return Def.ActorFrame{

	LoadActor("../Resources/Scripts/TileTool.lua", params[1])..{},
	LoadActor("../Resources/Scripts/5th/Z_Effects/SpiralTrace.lua", params[2])..{
		GainFocusCommand=function(self)
			self:set_tween_uses_effect_delta(true)
			self:effectclock('beat')
			self:queuecommand("Repeat01")
		end,
		Repeat01Command=function(self)
			self:sleep(4*2):diffusealpha(0)
			self:sleep(4*2):diffusealpha(1)
			self:queuecommand("Repeat01")
		end		
	},
	LoadActor("../Resources/Scripts/5th/Z_Effects/SpiralTrace.lua", params[3])..{
		GainFocusCommand=function(self)
			self:set_tween_uses_effect_delta(true)
			self:effectclock('beat')
			self:diffusealpha(0)
			self:queuecommand("Repeat01")
		end,
		Repeat01Command=function(self)
			self:sleep(4*2):diffusealpha(1)
			self:sleep(4*2):diffusealpha(0)
			self:queuecommand("Repeat01")
		end		
	}

}