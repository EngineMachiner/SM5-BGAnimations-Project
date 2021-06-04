
local s = "/BGAnimations/Resources"
local params = {
	File = s .. "/OutFox/A 6x10.png",
	X_num = { -4, 5 },
	Y_num = 4,
	Delay = 4,
	Frame_l = 60,
	Zoom = 2,
	Commands = { "SpinXY" }
}

s = s .. "/Scripts/TileTool.lua"

local a = { "Config.Load.lua", "Save/OutFoxPrefs.ini" }
local ColorTable = LoadThemeModule( "default", "Theme.Colors.lua" )( LoadModule( a[1] )( "SoundwavesSubTheme", a[2] ) )

local tex

return Def.ActorFrame{
	loadfile( s )( {
		File = GAMESTATE:GetCurrentSong():GetBackgroundPath(),
		BGMirror = true,
		X_num = 1
	} ),
	Def.ActorFrameTexture{
		InitCommand=function(self)
			self:setsize( SCREEN_WIDTH, SCREEN_BOTTOM )
			self:EnableAlphaBuffer(true)
			self:Create()
			tex = self:GetTexture()
		end,
		loadfile( s )( params )
	},
	Def.Sprite{
		OnCommand=function(self)
			self:Center()
			self:SetTexture(tex)
			self:effectclock("beat")
			self:set_tween_uses_effect_delta(true)
		end
	}
}