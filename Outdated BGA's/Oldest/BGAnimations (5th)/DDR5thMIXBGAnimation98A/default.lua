local t = Def.ActorFrame{
	LoadActor("1.png")..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,80;y,60;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,240;y,60;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,400;y,60;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,560;y,60;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,720;y,60;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,880;y,60;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,80;y,SCREEN_CENTER_Y;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,240;y,SCREEN_CENTER_Y;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,400;y,SCREEN_CENTER_Y;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,560;y,SCREEN_CENTER_Y;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,720;y,SCREEN_CENTER_Y;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,880;y,SCREEN_CENTER_Y;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,80;y,420;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,240;y,420;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,400;y,420;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,560;y,420;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,720;y,420;spin;effectmagnitude,180,0,0)
	};
	LoadActor("2.png")..{
		OnCommand=cmd(x,880;y,420;spin;effectmagnitude,180,0,0)
	};
};

return t;