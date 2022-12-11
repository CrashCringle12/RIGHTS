local t = Def.ActorFrame {
	Def.Sprite {
		Name="Base";
		Texture="_Mine Base";
		Frame0000=0;
		Delay0000=1;
	};
    Def.Sprite {
		Name="Spokes";
		Texture="_Mine Spokes";
		Frame0000=0;
		Delay0000=1;
		InitCommand=function(self)
			self:effectclock("timer"):effectmagnitude(0,0,2):spin()
		end;
	};
	Def.Sprite {
		Name="Glow";
		Texture="_Mine Glow";
		Frame0000=0;
		Delay0000=1;
		InitCommand=function(self)
			self:effectclock("beat"):blend("BlendMode_Add"):diffuseramp():effectcolor2(color("1,1,1,1")):effectcolor1(color("1,1,1,0")):effectperiod(1)
			-- effectcolor2 is BEFORE effectcolor1
		end;
	};--[[]]
};
return t;
