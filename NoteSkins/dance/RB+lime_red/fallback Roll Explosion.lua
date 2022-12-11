local t = Def.ActorFrame{



	Def.Sprite {
		Texture="ring 7x1";
		Frame0000=6;
		Delay0000=1;
		RollOnCommandOnCommand=function(self)
			self:visible(1)
		end;
		RollOffCommand=function(self)
			self:hidden(1)
		end;
    InitCommand=function(self)
    	self:blend('BlendMode_Add'):spin():effectmagnitude(0,0,180):zoom(0.8):hidden(1)
    end;
	};

};

return t;