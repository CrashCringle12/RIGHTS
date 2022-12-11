local f = 1

local t = Def.ActorFrame{

      
	Def.Sprite {
		Texture="line";
		Frame0000=0;
		Delay0000=1;
	};        
                          
	Def.Sprite {
		Texture="light";
		Frame0000=0;
		Delay0000=1;
		InitCommand=function(self)
			self:blend('BlendMode_Add'):effectclock("beat"):diffuseramp():effectcolor1(color("1,1,1,0")):effectcolor2(color("1,1,1,1"))
		end;
	};     

	--taps1
	Def.Sprite {
		Texture="tap1";
		Frame0000=0;
		Delay0000=1;
		InitCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0)
		end;
		NoneCommand=function(self)
		if f == 1 then
			f = 2
			self:stoptweening()
			self:zoom(0.5)
			self:diffusealpha(3)
			self:linear(0.45)
			self:zoom(0.8)
			self:diffusealpha(0)
		end
		end;
	};
	Def.Sprite {
		Texture="tap1";
		Frame0000=0;
		Delay0000=1;
		InitCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0)
		end;
		NoneCommand=function(self)
		if f == 4 then
			f = 5
			self:stoptweening()
			self:zoom(0.5)
			self:diffusealpha(3)
			self:linear(0.45)
			self:zoom(0.8)
			self:diffusealpha(0)
		end
		end;
	};
	Def.Sprite {
		Texture="tap1";
		Frame0000=0;
		Delay0000=1;
		InitCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0)
		end;
		NoneCommand=function(self)
		if f == 7 then
			f = 8
			self:stoptweening()
			self:zoom(0.5)
			self:diffusealpha(3)
			self:linear(0.45)
			self:zoom(0.8)
			self:diffusealpha(0)
		end
		end;
	};
	--taps2
	Def.Sprite {
		Texture="tap2";
		Frame0000=0;
		Delay0000=1;
		InitCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0)
		end;
		NoneCommand=function(self)
		if f == 2 then
			f = 3
			self:stoptweening()
			self:diffusealpha(1)
			self:zoom(0.7)
			self:linear(0.3)
			self:diffusealpha(0)
			self:zoom(0.9)
		end
		end;
	};
	Def.Sprite {
		Texture="tap2";
		Frame0000=0;
		Delay0000=1;
		InitCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0)
		end;
		NoneCommand=function(self)
		if f == 5 then
			f = 6
			self:stoptweening()
			self:diffusealpha(1)
			self:zoom(0.7)
			self:linear(0.3)
			self:diffusealpha(0)
			self:zoom(0.9)
		end
		end;
	};
	Def.Sprite {
		Texture="tap2";
		Frame0000=0;
		Delay0000=1;
		InitCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0)
		end;
		NoneCommand=function(self)
		if f == 8 then
			f = 9
			self:stoptweening()
			self:diffusealpha(1)
			self:zoom(0.7)
			self:linear(0.3)
			self:diffusealpha(0)
			self:zoom(0.9)
		end
		end;
	};
	--taps3
	Def.Sprite {
		Texture="tap3";
		Frame0000=0;
		Delay0000=1;
		InitCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0)
		end;
		NoneCommand=function(self)
		if f == 3 then
			f = 4
			self:stoptweening()
			self:diffusealpha(0)
			self:zoom(0.3)
			self:linear(0.15)
			self:diffusealpha(0.8)
			self:linear(0.15)
			self:diffusealpha(0)
			self:zoom(0.4)
		end
		end;
	};
	Def.Sprite {
		Texture="tap3";
		Frame0000=0;
		Delay0000=1;
		InitCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0)
		end;
		NoneCommand=function(self)
		if f == 6 then
			f = 7
			self:stoptweening()
			self:diffusealpha(0)
			self:zoom(0.3)
			self:linear(0.15)
			self:diffusealpha(0.8)
			self:linear(0.15)
			self:diffusealpha(0)
			self:zoom(0.4)
		end
		end;
	};
	Def.Sprite {
		Texture="tap3";
		Frame0000=0;
		Delay0000=1;
		InitCommand=function(self)
			self:blend('BlendMode_Add'):diffusealpha(0)
		end;
		NoneCommand=function(self)
		if f == 9 then
			f = 1
			self:stoptweening()
			self:diffusealpha(0)
			self:zoom(0.3)
			self:linear(0.15)
			self:diffusealpha(0.8)
			self:linear(0.15)
			self:diffusealpha(0)
			self:zoom(0.4)
		end
		end;
	};
};

return t;