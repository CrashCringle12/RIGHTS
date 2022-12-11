local f = 2

local t = Def.ActorFrame{

	Def.Sprite {
		Texture="ring 7x1";
		Frame0000=6;
		Delay0000=1;
		RollOnCommand=function(self)
			self:visible(1)
		end;
		RollOffCommand=function(self)
			self:hidden(1)
		end;
    InitCommand=function(self)
    	self:blend('BlendMode_Add'):spin():effectmagnitude(0,0,180):zoom(0.8):hidden(1)
    end;
	};

	Def.Sprite {
		Texture="ring 7x1";
		Frame0000=0;
		Delay0000=0.016;
		Frame0001=1;
		Delay0001=0.016;
		Frame0002=2;
		Delay0002=0.017;  
		Frame0003=3;
		Delay0003=0.016;
		HoldingOnCommand=function(self)
			self:visible(1)
		end;
		HoldingOffCommand=function(self)
			self:hidden(1)
		end;
    InitCommand=function(self)
    	self:blend('BlendMode_Add'):spin():effectmagnitude(0,0,180):zoom(0.8):hidden(1)
    end;
    W3Command=function(self)
    	self:diffuse(0,0,0,1)
    end;
    W2Command=function(self)
    	self:diffuse(0,0,0,1)
    end;
    W1Command=function(self)
    	self:diffuse(1,1,1,1)
    end;
	};

	Def.Sprite {
		Texture="ring 7x1";
		Frame0000=4;
		Delay0000=1;
		HoldingOnCommand=function(self)
			self:visible(1)
		end;
		HoldingOffCommand=function(self)
			self:hidden(1)
		end;
    InitCommand=function(self)
    	self:blend('BlendMode_Add'):spin():effectmagnitude(0,0,180):zoom(0.8):hidden(1)
    end;
    W3Command=function(self)
    	self:diffuse(0,0,0,1)
    end;
    W2Command=function(self)
    	self:diffuse(1,1,1,1)
    end;
    W1Command=function(self)
    	self:diffuse(0,0,0,1)
    end;
	};

	Def.Sprite {
		Texture="ring 7x1";
		Frame0000=5;
		Delay0000=1;
		HoldingOnCommand=function(self)
			self:visible(1)
		end;
		HoldingOffCommand=function(self)
			self:hidden(1)
		end;
    InitCommand=function(self)
    	self:blend('BlendMode_Add'):spin():effectmagnitude(0,0,180):zoom(0.8):hidden(1)
    end;
    W3Command=function(self)
    	self:diffuse(1,1,1,1)
    end;
    W2Command=function(self)
    	self:diffuse(0,0,0,1)
    end;
    W1Command=function(self)
    	self:diffuse(0,0,0,1)
    end;
	};

  Def.Sprite {
		Texture="bomb 25x3";
		Frames = Sprite.LinearFrames( 75, 1.25 );
		W3Command=function(self)
		if f == 2 then
			f = 3
			self:stoptweening()
			self:blend('BlendMode_Add')
			self:loop(0)
			self:diffuse(1,1,1,1)
			self:setstate(50)
			self:sleep(0.41)
			self:diffuse(1,1,1,0)
		end
		end;
		W2Command=function(self)
		if f == 2 then
			f = 3
			self:stoptweening()
			self:blend('BlendMode_Add')
			self:loop(0)
			self:diffuse(1,1,1,1)
			self:setstate(25)
			self:sleep(0.41)
			self:diffuse(1,1,1,0)
		end
		end;
		W1Command=function(self)
		if f == 2 then
			f = 3
			self:stoptweening()
			self:blend('BlendMode_Add')
			self:loop(0)
			self:diffuse(1,1,1,1)
			self:setstate(0)
			self:sleep(0.41)
			self:diffuse(1,1,1,0)
		end
		end;
		HeldCommand=function(self)
		if f == 2 then
			f = 3
			self:stoptweening()
			self:blend('BlendMode_Add')
			self:loop(0)
			self:diffuse(1,1,1,1)
			self:setstate(0)
			self:sleep(0.41)
			self:diffuse(1,1,1,0)
		end
		end;
   	HoldingOnCommand=function(self)
		if f == 4 then
			self:stoptweening()
			self:diffuse(1,1,1,0)
		end
		end;
    InitCommand=function(self)
    	self:stoptweening():diffuse(1,1,1,0)
    end;
	};


  Def.Sprite {
		Texture="bomb 25x3";
		Frames = Sprite.LinearFrames( 75, 1.25 );
		W3Command=function(self)
		if f == 4 then
			f = 5
			self:stoptweening()
			self:blend('BlendMode_Add')
			self:loop(0)
			self:diffuse(1,1,1,1)
			self:setstate(50)
			self:sleep(0.41)
			self:diffuse(1,1,1,0)
		end
		end;
		W2Command=function(self)
		if f == 4 then
			f = 5
			self:stoptweening()
			self:blend('BlendMode_Add')
			self:loop(0)
			self:diffuse(1,1,1,1)
			self:setstate(25)
			self:sleep(0.41)
			self:diffuse(1,1,1,0)
		end
		end;
		W1Command=function(self)
		if f == 4 then
			f = 5
			self:stoptweening()
			self:blend('BlendMode_Add')
			self:loop(0)
			self:diffuse(1,1,1,1)
			self:setstate(0)
			self:sleep(0.41)
			self:diffuse(1,1,1,0)
		end
		end;
		HeldCommand=function(self)
		if f == 4 then
			f = 5
			self:stoptweening()
			self:blend('BlendMode_Add')
			self:loop(0)
			self:diffuse(1,1,1,1)
			self:setstate(0)
			self:sleep(0.41)
			self:diffuse(1,1,1,0)
		end
		end;
   	HoldingOnCommand=function(self)
		if f == 6 then
			self:stoptweening()
			self:diffuse(1,1,1,0)
		end
		end;
    InitCommand=function(self)
    	self:stoptweening():diffuse(1,1,1,0)
    end;
	};


  Def.Sprite {
		Texture="bomb 25x3";
		Frames = Sprite.LinearFrames( 75, 1.25 );
		W3Command=function(self)
		if f == 6 then
			f = 1
			self:stoptweening()
			self:blend('BlendMode_Add')
			self:loop(0)
			self:diffuse(1,1,1,1)
			self:setstate(50)
			self:sleep(0.41)
			self:diffuse(1,1,1,0)
		end
		end;
		W2Command=function(self)
		if f == 6 then
			f = 1
			self:stoptweening()
			self:blend('BlendMode_Add')
			self:loop(0)
			self:diffuse(1,1,1,1)
			self:setstate(25)
			self:sleep(0.41)
			self:diffuse(1,1,1,0)
		end
		end;
		W1Command=function(self)
		if f == 6 then
			f = 1
			self:stoptweening()
			self:blend('BlendMode_Add')
			self:loop(0)
			self:diffuse(1,1,1,1)
			self:setstate(0)
			self:sleep(0.41)
			self:diffuse(1,1,1,0)
		end
		end;
		HeldCommand=function(self)
		if f == 6 then
			f = 1
			self:stoptweening()
			self:blend('BlendMode_Add')
			self:loop(0)
			self:diffuse(1,1,1,1)
			self:setstate(0)
			self:sleep(0.41)
			self:diffuse(1,1,1,0)
		end
		end;
   	HoldingOnCommand=function(self)
		if f == 2 then
			self:stoptweening()
			self:diffuse(1,1,1,0)
		end
		end;
    InitCommand=function(self)
    	self:stoptweening():diffuse(1,1,1,0)
    end;
	};

	Def.Quad {
	InitCommand=function(self)
		self:zoom(0)
	end;
	W1Command=function(self)
		if f == 1 then
			f = 2
		elseif f == 3 then
			f = 4
		elseif f == 5 then
			f = 6

		end
	end;
	W2Command=function(self)
		if f == 1 then
			f = 2
		elseif f == 3 then
			f = 4
		elseif f == 5 then
			f = 6

		end
	end;
	W3Command=function(self)
		if f == 1 then
			f = 2
		elseif f == 3 then
			f = 4
		elseif f == 5 then
			f = 6

		end
	end;
	HeldCommand=function(self)
		if f == 1 then
			f = 2
		elseif f == 3 then
			f = 4
		elseif f == 5 then
			f = 6

		end
	end;
    };


};

return t;