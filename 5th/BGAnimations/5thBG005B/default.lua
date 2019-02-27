local IsThereBG if GAMESTATE:GetCurrentSong():HasBackground() == true then 
	file = GAMESTATE:GetCurrentSong():GetBackgroundPath() 
		else file = "/BGAnimations/Backgrounds/fallback.png"
		end;
local ScaleVar = _screen.h/480

return Def.ActorFrame{
	LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
	end,
	LoadActor(file)..{
		OnCommand=function(self)
		self:Center()
			:zoom(ScaleVar)
			:zoomx(-ScaleVar)
			:SetSize(640,480)
			:x(self:GetX()+640*ScaleVar)
			:faderight(0.025)
			:rainbow():effectperiod(8):effectclock("beat")
		end
	};
	
	LoadActor(file)..{
		OnCommand=function(self)
		self:Center()
			:zoom(ScaleVar)
			:zoomx(-ScaleVar)
			:SetSize(640,480)
			:x(self:GetX()-640*ScaleVar)
			:fadeleft(0.025)
			:rainbow():effectperiod(8):effectclock("beat")
		end
	};
	
	LoadActor("B.lua", ScaleVar)..{
		OnCommand=function(self)
		self:diffusealpha(1/(19/(19/2.5)))
		:rainbow():effectperiod(8):effectclock("beat")
		end
	};
	
}