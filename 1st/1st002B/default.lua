
--Never ResetParams twice in the same table using BGA_ParamsTweaks.

local t = Def.ActorFrame{}

local params = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/1st/Sprites/Gradients/1stCobweb 8x8.png",
		X_num = 2,
		X_pos = -0.5,
		Y_num = { -1, 0 },
		Frame_i = 1,
		Frame_l = 60,
		Zoom = 4,
		Delay = 2,
		Commands = { "Mirror" },
		Blend = "BlendMode_Add"
	},

	{
		Index = 2,
		File = "/BGAnimations/Resources/1st/Sprites/M 5x4.png",
		Script = "/BGAnimations/Resources/Scripts/1st/SpaceEffects/Stairs.lua",
		Zoom = 0.5,
		Commands = "FramePerSprite",
		Frame_l = 6
	}

} 

	t[#t+1] = Def.Quad{
		OnCommand=function(self)
			self:FullScreen()
			self:diffuse(Color.Black)	
		end
	}
	BGA_G.Tile( t, params[1] )
	t[#t+1] = loadfile( params[2]["Script"])( params[2] )

return Def.ActorFrame{ t }