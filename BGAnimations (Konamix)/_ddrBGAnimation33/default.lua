return Def.ActorFrame{
	LoseFocusCommand=function(self)
		self:RunCommandsOnChildren(function(child) child:visible(false):finishtweening() end, {})
	end,

	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;spin;effectmagnitude,0,0,-320)
	};
	LoadActor("default - copia.lua")..{
		OnCommand=cmd(hibernate,4)
	};
	LoadActor("default - copia.lua")..{
		OnCommand=cmd(hibernate,2)
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.05;croptop,0.05;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-45;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.05;croptop,0.05;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-45;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.05;croptop,0.05;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,45;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.05;croptop,0.05;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-45;rotationx,180;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.05;croptop,0.05;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,45;rotationx,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.1;croptop,0.1;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-50;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.1;croptop,0.1;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,50;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.1;croptop,0.1;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-50;rotationx,180;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.1;croptop,0.1;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,50;rotationx,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.15;croptop,0.15;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-55;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.15;croptop,0.15;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,55;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.15;croptop,0.15;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-55;rotationx,180;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.15;croptop,0.15;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,55;rotationx,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.2;croptop,0.2;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-60;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.2;croptop,0.2;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,60;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.2;croptop,0.2;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-60;rotationx,180;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.2;croptop,0.2;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,60;rotationx,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.25;croptop,0.25;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-65;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.25;croptop,0.25;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,65;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.25;croptop,0.25;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-65;rotationx,180;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.25;croptop,0.25;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,65;rotationx,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.3;croptop,0.3;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-70;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.3;croptop,0.3;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,70;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.3;croptop,0.3;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-70;rotationx,180;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.3;croptop,0.3;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,70;rotationx,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.35;croptop,0.35;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-75;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.35;croptop,0.35;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,75;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.35;croptop,0.35;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-75;rotationx,180;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.35;croptop,0.35;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,75;rotationx,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.4;croptop,0.4;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-80;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.4;croptop,0.4;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,80;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.4;croptop,0.4;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-80;rotationx,180;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.4;croptop,0.4;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,80;rotationx,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.45;croptop,0.45;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-85;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.45;croptop,0.45;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,85;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.45;croptop,0.45;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,-85;rotationx,180;rotationy,180;effectclock,'beat')
	};
	LoadActor(GAMESTATE:GetCurrentSong():GetBackgroundPath())..{
		OnCommand=cmd(Center;zoomto,SCREEN_WIDTH*2,SCREEN_HEIGHT*2;cropbottom,0.5;cropright,0.5;cropleft,0.45;croptop,0.45;texcoordvelocity,0.125,0.125;spin;effectmagnitude,0,0,85;rotationx,180;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,64;y,64;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,192;y,64;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,320;y,64;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,448;y,64;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,576;y,64;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,704;y,64;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,832;y,64;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,960;y,64;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,64;y,192;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,192;y,192;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,320;y,192;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,448;y,192;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,576;y,192;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,704;y,192;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,832;y,192;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,960;y,192;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,64;y,320;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,192;y,320;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,320;y,320;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,448;y,320;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,576;y,320;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,704;y,320;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,832;y,320;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,960;y,320;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,64;y,448;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,192;y,448;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,320;y,448;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,448;y,448;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,576;y,448;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,704;y,448;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,832;y,448;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,960;y,448;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,64;y,576;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,192;y,576;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,320;y,576;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,448;y,576;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,576;y,576;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,704;y,576;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,832;y,576;effectclock,'beat')
	};
	LoadActor("1 5x3")..{
		OnCommand=cmd(x,960;y,576;effectclock,'beat')
	};
}