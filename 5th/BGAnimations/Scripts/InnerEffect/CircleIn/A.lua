local particle, rotationz_allow, round_move = ...
local ScaleVar = _screen.h/480

local t = Def.ActorFrame{

	LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
	end,

}
		
for i=1,3 do
	t[i] = LoadActor(particle)..{
			GainFocusCommand=function(self)
				self:xy(SCREEN_CENTER_X+self:GetWidth()*ScaleVar,SCREEN_CENTER_Y-self:GetHeight()*ScaleVar/2)
				self:SetAllStateDelays(1/self:GetNumStates()):rotationz(135):zoom(ScaleVar)
				:diffusealpha(0):z(125*ScaleVar):sleep(math.abs(i)*2):linear(0.25):diffusealpha(1):linear(4):z(-1000*ScaleVar):playcommand("Spin"):linear(0.25):diffusealpha(0):set_tween_uses_effect_delta(true):effectclock('beat'):queuecommand("Continue")
			end,
			ContinueCommand=function(self)
				self:sleep(2):rotationz(135):diffusealpha(0):z(125*ScaleVar):linear(0.25):diffusealpha(1):linear(4):z(-1000*ScaleVar):playcommand("Spin"):linear(0.25):diffusealpha(0):set_tween_uses_effect_delta(true):effectclock('beat'):queuecommand("Continue")
			end,
			SpinCommand=function(self)
				if rotationz_allow == true then
					self:rotationz(self:GetRotationZ()+360*2)
				end
			end
		}
end

for i=1,3 do
	t[i+3] = LoadActor(particle)..{
			GainFocusCommand=function(self)
				self:SetAllStateDelays(1/self:GetNumStates()):xy(SCREEN_CENTER_X,SCREEN_CENTER_Y-self:GetHeight()*ScaleVar*1.5):rotationz(135+45):zoom(ScaleVar)
				:diffusealpha(0):z(125*ScaleVar):sleep(math.abs(i+1/6)*2):linear(0.25):diffusealpha(1):linear(4):z(-1000*ScaleVar):playcommand("Spin"):linear(0.25):diffusealpha(0):set_tween_uses_effect_delta(true):effectclock('beat'):queuecommand("Continue")
			end,
			ContinueCommand=function(self)
				self:sleep(2):rotationz(135):diffusealpha(0):z(125*ScaleVar):linear(0.25):diffusealpha(1):linear(4):z(-1000*ScaleVar):playcommand("Spin"):linear(0.25):diffusealpha(0):set_tween_uses_effect_delta(true):effectclock('beat'):queuecommand("Continue")
			end,
			SpinCommand=function(self)
				if rotationz_allow == true then
					self:rotationz(self:GetRotationZ()+360*2)
				end
			end
		}
end

for i=1,3 do
	t[i+3*2] = LoadActor(particle)..{
			GainFocusCommand=function(self)
				self:SetAllStateDelays(1/self:GetNumStates()):xy(SCREEN_CENTER_X-self:GetWidth()*ScaleVar,SCREEN_CENTER_Y-self:GetHeight()*ScaleVar/2):rotationz(135+45*2):zoom(ScaleVar)
				:diffusealpha(0):z(125*ScaleVar):sleep(math.abs(i+(1/6)*2)*2):linear(0.25):diffusealpha(1):linear(4):z(-1000*ScaleVar):playcommand("Spin"):linear(0.25):diffusealpha(0):set_tween_uses_effect_delta(true):effectclock('beat'):queuecommand("Continue")
			end,
			ContinueCommand=function(self)
				self:sleep(2):rotationz(135):diffusealpha(0):z(125*ScaleVar):linear(0.25):diffusealpha(1):linear(4):z(-1000*ScaleVar):playcommand("Spin"):linear(0.25):diffusealpha(0):set_tween_uses_effect_delta(true):effectclock('beat'):queuecommand("Continue")
			end,
			SpinCommand=function(self)
				if rotationz_allow == true then
					self:rotationz(self:GetRotationZ()+360*2)
				end
			end
		}
end

for i=1,3 do
	t[i+3*3] = LoadActor(particle)..{
			GainFocusCommand=function(self)
				self:SetAllStateDelays(1/self:GetNumStates()):xy(SCREEN_CENTER_X-self:GetWidth()*ScaleVar,SCREEN_CENTER_Y+self:GetHeight()*ScaleVar):rotationz(135+45*4):zoom(ScaleVar)
				:diffusealpha(0):z(125*ScaleVar):sleep(math.abs(i+(1/6)*3)*2):linear(0.25):diffusealpha(1):linear(4):z(-1000*ScaleVar):playcommand("Spin"):linear(0.25):diffusealpha(0):set_tween_uses_effect_delta(true):effectclock('beat'):queuecommand("Continue")
			end,
			ContinueCommand=function(self)
				self:sleep(2):rotationz(135):diffusealpha(0):z(125*ScaleVar):linear(0.25):diffusealpha(1):linear(4):z(-1000*ScaleVar):playcommand("Spin"):linear(0.25):diffusealpha(0):set_tween_uses_effect_delta(true):effectclock('beat'):queuecommand("Continue")
			end,
			SpinCommand=function(self)
				if rotationz_allow == true then
					self:rotationz(self:GetRotationZ()+360*2)
				end
			end
		}
end

for i=1,3 do
	t[i+3*4] = LoadActor(particle)..{
			GainFocusCommand=function(self)
				self:SetAllStateDelays(1/self:GetNumStates()):xy(SCREEN_CENTER_X,SCREEN_CENTER_Y+self:GetHeight()*ScaleVar*1.5):rotationz(135+45*5):zoom(ScaleVar)
				:diffusealpha(0):z(125*ScaleVar):sleep(math.abs(i+(1/6)*4)*2):linear(0.25):diffusealpha(1):linear(4):z(-1000*ScaleVar):playcommand("Spin"):linear(0.25):diffusealpha(0):set_tween_uses_effect_delta(true):effectclock('beat'):queuecommand("Continue")
			end,
			ContinueCommand=function(self)
				self:sleep(2):rotationz(135):diffusealpha(0):z(125*ScaleVar):linear(0.25):diffusealpha(1):linear(4):z(-1000*ScaleVar):playcommand("Spin"):linear(0.25):diffusealpha(0):set_tween_uses_effect_delta(true):effectclock('beat'):queuecommand("Continue")
			end,
			SpinCommand=function(self)
				if rotationz_allow == true then
					self:rotationz(self:GetRotationZ()+360*2)
				end
			end
		}
end

for i=1,3 do
	t[i+3*5] = LoadActor(particle)..{
			GainFocusCommand=function(self)
				self:SetAllStateDelays(1/self:GetNumStates()):xy(SCREEN_CENTER_X+self:GetWidth()*ScaleVar,SCREEN_CENTER_Y+self:GetHeight()*ScaleVar):rotationz(135+45*6):zoom(ScaleVar)
				:diffusealpha(0):z(125*ScaleVar):sleep(math.abs(i+(1/6)*5)*2):linear(0.25):diffusealpha(1):linear(4):z(-1000*ScaleVar):playcommand("Spin"):linear(0.25):diffusealpha(0):set_tween_uses_effect_delta(true):effectclock('beat'):queuecommand("Continue")
			end,
			ContinueCommand=function(self)
				self:sleep(2):rotationz(135):diffusealpha(0):z(125*ScaleVar):linear(0.25):diffusealpha(1):linear(4):z(-1000*ScaleVar):playcommand("Spin"):linear(0.25):diffusealpha(0):set_tween_uses_effect_delta(true):effectclock('beat'):queuecommand("Continue")
			end,
			SpinCommand=function(self)
				if rotationz_allow == true then
					self:rotationz(self:GetRotationZ()+360*2)
				end
			end
		}
end

t.GainFocusCommand=function(self)
    self:SortByDrawOrder()
    self:fov(90*1.5)
end

collectgarbage();
return t