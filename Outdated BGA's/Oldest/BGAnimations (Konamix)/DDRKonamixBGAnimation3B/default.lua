return Def.ActorFrame{

	LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
	end,
	
	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(64)
			:y(60)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(192)
			:y(60)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(320)
			:y(60)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(448)
			:y(60)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(576)
			:y(60)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(704)
			:y(60)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(832)
			:y(60)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(64)
			:y(180)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(192)
			:y(180)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(320)
			:y(180)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(448)
			:y(180)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(576)
			:y(180)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(704)
			:y(180)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(832)
			:y(180)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(64)
			:y(300)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(192)
			:y(300)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(320)
			:y(300)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(448)
			:y(300)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(576)
			:y(300)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(704)
			:y(300)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(832)
			:y(300)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(64)
			:y(420)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(192)
			:y(420)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(320)
			:y(420)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(448)
			:y(420)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(576)
			:y(420)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(704)
			:y(420)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},

	LoadActor("1 5x3.png")..{
		OnCommand=function(self)
			self:x(832)
			:y(420)
			:effectclock('beat')
			:diffuseramp():effectcolor1(1,1,1,1):effectcolor2(0,0,0,0)
		end
	},
}