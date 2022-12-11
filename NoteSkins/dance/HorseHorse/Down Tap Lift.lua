local t = Def.ActorFrame {
	Def.Sprite {
		Texture="_Down Tap Lift";
		InitCommand=cmd(animate,false;pulse;effectclock,"beat";effectmagnitude,0.9,1,1);
	};
};
return t;
