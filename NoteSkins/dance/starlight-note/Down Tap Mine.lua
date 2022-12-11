local t = Def.ActorFrame {
	Def.Sprite {
		Texture=NOTESKIN:GetPath( '_down', 'tap mine' );
		Frame0000=0;
		Delay0000=1;
	};
	Def.ActorFrame {
		Name="Spark_Group";
		InitCommand=function(self)
			self:zoom(1.2)
		end;
		Def.Sprite {
			Name="Spark_Left";
			Condition=Var "Button" == "Left";
			Texture="_Mine Spark";
			Frames = Sprite.LinearFrames( 4, 4 );
			InitCommand=function(self)
				self:effectclock("timer"):SetAllStateDelays(0.1):setstate(0):rotationz(90)
			end;
		};
		Def.Sprite {
			Name="Spark_Down";
			Condition=Var "Button" == "Down";
			Texture="_Mine Spark";
			Frames = Sprite.LinearFrames( 4, 4 );
			InitCommand=function(self)
				self:effectclock("timer"):SetAllStateDelays(0.1):setstate(4)
			end;
		};
		Def.Sprite {
			Name="Spark_Down";
			Condition=Var "Button" == "Up";
			Texture="_Mine Spark";
			Frames = Sprite.LinearFrames( 4, 4 );
			InitCommand=function(self)
				self:effectclock("timer"):SetAllStateDelays(0.1):setstate(8):rotationz(180)
			end;
		};
		Def.Sprite {
			Name="Spark_Left";
			Condition=Var "Button" == "Right";
			Texture="_Mine Spark";
			Frames = Sprite.LinearFrames( 4, 4 );
			InitCommand=function(self)
				self:effectclock("timer"):SetAllStateDelays(0.1):setstate(12):rotationz(90)
			end;
		};
	};
};
return t;
