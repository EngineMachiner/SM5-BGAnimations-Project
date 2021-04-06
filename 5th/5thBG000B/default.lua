
local replace = ...
local t = Def.ActorFrame{}

local params = {
	Index = 1,
	File = { 
		GAMESTATE:GetCurrentSong():GetBackgroundPath(),
		GAMESTATE:GetCurrentSong():GetBackgroundPath()
	},
	Commands = { "Mirror", "Move" },
	BGMirror = true,
	X_coord = -1,

}

	BGA_G.ParTweak( params, replace )
	BGA_G.Tile( t, params )

return Def.ActorFrame{ t }