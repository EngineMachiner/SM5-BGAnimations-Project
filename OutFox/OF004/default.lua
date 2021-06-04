
local s = "/BGAnimations/Resources"
local params = {
	File = s .. "/OutFox/A 6x10.png",
	X_num = { -4, 5 },
	Y_num = 4,
	Delay = 4,
	Frame_l = 60,
	Zoom = 2
}

s = s .. "/Scripts/TileTool.lua"

local a = { "Config.Load.lua", "Save/OutFoxPrefs.ini" }
local ColorTable = LoadThemeModule( "default", "Theme.Colors.lua" )( LoadModule( a[1] )( "SoundwavesSubTheme", a[2] ) )

return Def.ActorFrame{
	loadfile( s )( params ),
	Def.Quad {
		InitCommand=function(self) self:Center():zoomto(SCREEN_WIDTH,SCREEN_HEIGHT) end,
		OnCommand=function(self) 
			self:playcommand("Init")
			self:diffuse( ColorTable["titleBGA"] )
			self:diffusebottomedge( ColorTable["titleBGB"] ) 
			self:blend('add')
		end
	}
}