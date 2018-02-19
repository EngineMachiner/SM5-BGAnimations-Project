local BPM = GAMESTATE:GetSongPosition():GetCurBPS()*60/_screen.w/2
return Def.ActorFrame{
	LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
	end,

	LoadActor("1 (stretch).png")..{
		OnCommand=function(self)
			self:Center():FullScreen()
				:zoom(3)
				:customtexturerect(0,0,3,3)
				:set_use_effect_clock_for_texcoords(true)
				:texcoordvelocity(-0.075,0):effectclock('beat')
				:diffusealpha(0.5)
		end
	},
	
		LoadActor("../Sprites/ParticlesDown", "Tear.png")..{
		OnCommand=function(self) 
			self:effectclock('beat')
		end

	},

}