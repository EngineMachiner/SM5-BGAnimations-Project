
--Never ResetParams twice in the same table using BGA_ParamsTweaks.

local t = Def.ActorFrame{}

local params = {

	{
		Index = 1,
		File = "/BGAnimations/Resources/1st/Backgrounds/A.png",
		X_num = 1,
		Delay = 4,
	},

	{
		Index = 2,
		File = "/BGAnimations/Resources/1st/Sprites/J 3x5.png",
		X_num = 1,
		Spacing = { 1, 0.65 },
		Y_num = 1,
		Zoom = 2.5,
		Frame_l = 15,
		Color = Color.Orange,
		Blend = 'add'
	}

} 

	t[#t+1] = Def.Quad{
		OnCommand=function(self)
			self:FullScreen()
			self:diffuse(Color.Black)
		end
	}

	BGA_G.Tile( t, params[1] )
	t[2]["OnCommand"] = function(self)
		self:zoomx( 0.5 )
		self:x(25)
	end

	t[#t+1] = Def.Quad{
		OnCommand=function(self)
			self:FullScreen()
			self:blend("BlendMode_InvertDest")
		end
	}

local matrix = {
	{ 0, 0.625 },
	{ 0.5, 0 }
}

for i=-1,1 do
	for k=1,2 do
		t[#t+1] = Def.Sprite{
			OnCommand=function(self)

				self:Load("/BGAnimations/Resources/1st/Backgrounds/G.png")
				self:Center()

				local p = {}

				BGA_G.DefPar( p )
				BGA_G.SetStates(self, p)

				self:x( self:GetX() + self:GetZoomedWidth() * i )
				self:cropleft(matrix[1][k])
				self:cropright(matrix[2][k])

				if math.abs(i) == 1 then 
					self:zoomx( - self:GetZoomX() )
				end

			end
		}
	end
end

	BGA_G.Tile( t, params[2] )

return Def.ActorFrame{ t }