
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
		File = s .. "/1st/Sprites/C 5x1.png",
		Static = true,
		Frames = { 1, 5 },
		Zoom = 0.25,
		Commands = { "RandomInitState" },
		Script = s .. "/Scripts/SpaceEffects/Bounce.lua"
	}

} 

	local s = "/BGAnimations/Resources/Scripts/Kaleidoscopes/Main.lua"
	t[#t+1] = loadfile( s )( params[1] )
	t[#t+1] = Def.Quad{
		OnCommand=function(self)
			self:FullScreen():diffuse(color("#505050"))
			self:blend("BlendMode_Modulate")
			self:rainbow():effectclock("beat")
			self:effectperiod( 16 * BGA_G.GetDelay(self)[2] )
		end
	}

	t[#t+1] = loadfile( params[2].Script )( params[2] )

return Def.ActorFrame{ t }