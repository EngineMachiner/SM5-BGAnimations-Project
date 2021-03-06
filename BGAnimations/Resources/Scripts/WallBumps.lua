
local params = ...

local t = Def.ActorFrame{}

BGA_G.DefPar( params )

local function UnitVec()

	local x = math.random(-1000,1000) * 0.001
	local y = math.random(-1000,1000) * 0.001
	local norm = math.sqrt( (x)^2 + (y)^2 )

	if norm == 0 then UnitVec() end

	return { x * 60 / norm , y * 60 / norm }

end

local count = - 0.1
for k=1,3 do
	for i=1,4 do

		if k < 3 or i < 2 and k == 3 then

			local f = Def.ActorFrame{ 
				GainFocusCommand=function(self)
					BGA_G.Stop( self, true )
				end,
				LoseFocusCommand=function(self)
					BGA_G.Stop( self )
				end
			}	
		
			t[#t+1] = Def.ActorFrame{ f }

			f[#f+1] = Def.Sprite{
				
				InitCommand=function(self)
					self:Load(params.File)
				end,

				OnCommand=function(self)
					BGA_G.SetStates(self, params)

					self.dir = UnitVec()
					count = count + 0.1

					local w = self:GetZoomedWidth()
					local h = self:GetZoomedHeight()
					local n = self:GetNumStates()
					local d = BGA_G.GetDelay(self)[2]

					if n > 1 then 
						local s = math.random( 0, ( n - 1 ) )
						self:setstate( s )
					end

					self:effectclock("beat")
					self:set_tween_uses_effect_delta(true)

					BGA_G.PlayCmds(self, params)

					self:x( w * 0.75 * i )
					self:y( h * 0.75 + h * 0.5 * ( k - i * 0.25 ) )

					self:sleep(count*d)
					self:queuecommand("Move")

				end,

				NoAnimationCommand=function(self)
					self:animate(false)
					local n = self:GetNumStates()
					self:setstate( ( i + k ) % n )
				end,

				MoveCommand=function(self)

					local s = self

					for i=1,2 do
						s = s:GetParent()
					end

					local function HBorder(w)
						if self:GetX() + w * 0.5 >= SCREEN_WIDTH
						or self:GetX() - w * 0.5 <= 0 then 
							return true
						end
						return false
					end

					local function VBorder(h)
						if self:GetY() + h * 0.5 >= SCREEN_HEIGHT
						or self:GetY() - h * 0.5 <= 0 then 
							return true
						end
						return false
					end

					s:SetUpdateFunction(function() 

						local n = 4
						local w = self:GetZoomedWidth()
						local h = self:GetZoomedHeight()
						local d = self:GetEffectDelta()

						if d < 0.5 then
							if params.SleepMove then

								self.t = self.t or 0
								self.t = self.t + d
								local bpm = GAMESTATE:GetSongBPS() * 60
								bpm = bpm > 200 and math.floor( bpm * 0.01 ) * 0.75
								bpm = bpm or 1

								if self.t > 0.5 * bpm then
									self.t = 0
									self:x( self:GetX() + self.dir[1] * w * 0.01 )
									self:y( self:GetY() - self.dir[2] * h * 0.01 )
								end

								if HBorder(w) then
									self.dir[1] = - self.dir[1]
									self:x( self:GetX() + self.dir[1] * w * 0.01 )
								end
		
								if VBorder(h) then
									self.dir[2] = - self.dir[2]
									self:y( self:GetY() - self.dir[2] * h * 0.01 )
								end

							else

								d = d * n

								if HBorder(w) then
									self.dir[1] = - self.dir[1]
									self:x( self:GetX() + self.dir[1] * w * 0.25 * 0.01 )
								else
									self:x( self:GetX() + self.dir[1] * d )
								end
		
								if VBorder(h) then
									self.dir[2] = - self.dir[2] 
									self:y( self:GetY() - self.dir[2] * h * 0.25 * 0.01 )
								else
									self:y( self:GetY() - self.dir[2] * d )
								end	

							end
						end
						
					end)

				end

			}

		end

	end
end

if params.Remove then
	t = nil
end

return Def.ActorFrame{ t }