
--Never ResetParams twice in the same table using BGA_ParamsTweaks.

local t = Def.ActorFrame{}

local s = "/BGAnimations/Resources"

local params = {

	{
		Index = 1,
		File = GAMESTATE:GetCurrentSong():GetBackgroundPath(),
		X_num = 1,
		BGMirror = true
	},

	{
		Index = 2,
		File = "/BGAnimations/Resources/1st/Sprites/Gradients/1stAfro 3x5.png",
		X_num = 1,
		Y_num = { -2, 0 },
		Frame_l = 15,
		Commands = "Mirror",
		Zoom = 2.5,
		BGMirror = true,
		Blend = 'add'
	},
} 

	local s = "/BGAnimations/Resources/Scripts/Kaleidoscopes/Main.lua"
	t[#t+1] = loadfile( s )( params[1] )

	t[#t+1] = Def.ActorFrame{ 
		OnCommand=function(self)
			self:diffusealpha(0.5)
		end 
	}
	BGA_G.Tile( t[#t], params[2] )

return Def.ActorFrame{ t }