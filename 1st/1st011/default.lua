
--Never ResetParams twice in the same table using BGA_ParamsTweaks.

local t = Def.ActorFrame{
	GainFocusCommand=function(self)
		BGA_G.Stop( self, true )
	end,
	LoseFocusCommand=function(self)
		BGA_G.Stop( self )
	end,
}

local s = "/BGAnimations/Resources"
local params = {

	{
		Index = 2,
		File = s .. "/1st/Backgrounds/B.png",
		X_num = 1,
		Commands = { "Color", "Mirror" },
		BGMirror = true,
		Color = color("0,0,0,1"),
	},

	{
		Index = 1,
		File = s .. "/1st/Sprites/HSV/A 4x1.png",
		X_num = 1,
		Frame_i = 2,
		BGMirror = true,
	}

} 

	local p = {}
	DeepCopy( params[2], p )
	p.Frame_i = 4

	BGA_G.Tile( t, params[2] )

	t[#t+1] = Def.ActorFrame{
		OnCommand=function(self)
			self:effectclock("beat")
			self:set_tween_uses_effect_delta(true)
			self:queuecommand("Repeat")
		end,
		RepeatCommand=function(self)
			self:sleep(2):diffusealpha(0)
			self:sleep(2):diffusealpha(1)
			self:queuecommand("Repeat")
		end
	}
	BGA_G.Tile( t[#t], p )

	BGA_G.Tile( t, params[1] )

return Def.ActorFrame{ t }