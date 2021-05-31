
local s = "/BGAnimations/Resources"
local params = {

	File = s .. "/5th/Sprites/DABC 4x4.png",
	Frame_i = 11,
	Frame_l = 12,
	Dir = "Down",
	Commands = { "TwoSprites" },
	Spin = true

}

return Def.ActorFrame{

	Def.Quad{
		OnCommand=function(self)
			self:diffuse(Color.Black)
			self:FullScreen()
			self:visible(true)
		end,
		LoseFocusCommand=function(self)
			self:visible(false)
		end
	},

	loadfile( s .. "/Scripts/TileTool.lua" )( {
		File = GAMESTATE:GetCurrentSong():GetBackgroundPath(),
		X_num = 1,
		BGMirror = true,
		Commands = { "Fade", "Mirror" },
		Ramp = true,
		Fade = { 0, 1 },
		Color = color("#808080")
	} ),

	loadfile( s .. "/Scripts/Particles.lua" )( params )

}