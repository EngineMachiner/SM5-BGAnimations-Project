
local tweaks = ...

local t = Def.ActorFrame{}

local params = {

	{
		Index = 1,
		File = GAMESTATE:GetCurrentSong():GetBackgroundPath(),
		Commands = "Mirror",
		BGMirror = true,
		X_num = 1
	},

	{
		Index = 2,
		File = "/BGAnimations/Resources/1st/Sprites/G2 4x4.png",
		X_num = { -6, 5 },
		Y_num = { -3, 2 },
		Frames = { 1, 8 },
		Zoom = 0.675,
		Color = "Rainbow",
		Script = "/BGAnimations/Resources/Scripts/TileTool.lua"
	}

}

BGA_G.ParTweak( params, tweaks )

BGA_G.Tile( t, params[1] )
t[#t+1] = Def.ActorFrameTexture{
	OnCommand=function(self)
		self:setsize( SCREEN_WIDTH, SCREEN_BOTTOM )
		self:EnableAlphaBuffer(true)
		self:Create()
		self:GetParent().Tex = self:GetTexture()
	end,
	loadfile( params[2].Script )( params[2] )
}

t[#t+1] = Def.Sprite{
	OnCommand=function(self)
		local tex = self:GetParent().Tex
		self:Center()
		self:SetTexture(tex)
		self:blend("BlendMode_Add")
	end
}

return Def.ActorFrame{ t }