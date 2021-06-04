
--Never ResetParams twice in the same table using BGA_ParamsTweaks.

local t = Def.ActorFrame{
	GainFocusCommand=function(self)
		BGA_G.Stop( self, true )
	end,
	LoseFocusCommand=function(self)
		BGA_G.Stop( self )
	end
}

local params = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/1st/Sprites/Gradients/B001 5x3.png",
		X_num = { -2, 1 },
		Y_num = { -1, 0 },
		Frame_l = 15,
		Zoom = 1.5,
		Delay = 0.5,
		Commands = { "Rainbow", "Mirror" }
	},

	{
		Index = 2,
		File = "/BGAnimations/Resources/1st/Sprites/F 32x4.png",
		Script = "/BGAnimations/Resources/Scripts/1st/SpaceEffects/Stairs.lua",
		Flat = true,
		fov = 177,
		Add = 7,
		Blend = 'add',
		Commands = { "FramePerSprite" },
		ZoomX = 0.5,
		Frames = { 1, 32 }
	}

} 

	BGA_G.Tile( t, params[1] )
	t[#t+1] = Def.ActorFrame{
		loadfile( params[2]["Script"])( params[2] ),
		OnCommand=function(self)
			self:diffusealpha(0.75)
		end
	}

return Def.ActorFrame{ t }