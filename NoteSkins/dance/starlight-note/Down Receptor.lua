local t = Def.ActorFrame {
	Def.Sprite {
		Texture=NOTESKIN:GetPath( '_down', 'tap Receptor Base' );
		Frame0000=0;
		Delay0000=0.125;
		Frame0001=1;
		Delay0001=0.875;
		InitCommand=NOTESKIN:GetMetricA('ReceptorArrow', 'InitCommand');
		NoneCommand=NOTESKIN:GetMetricA('ReceptorArrow', 'NoneCommand');
	};
	Def.Sprite {
		Texture=NOTESKIN:GetPath( '_down', 'tap Receptor Overlay' );
		Frames = Sprite.LinearFrames(4, 1);
		Delay0000=1;
		Delay0001=1;
		Delay0002=1;
		Delay0003=1;
		InitCommand=NOTESKIN:GetMetricA('ReceptorArrowOverlay', 'InitCommand');
		NoneCommand=NOTESKIN:GetMetricA('ReceptorArrowOverlay', 'NoneCommand');
	};
	Def.Sprite {
		Texture=NOTESKIN:GetPath( '_down', 'tap Flash' );
		Frame0000=0;
		Delay0000=1;
		InitCommand=NOTESKIN:GetMetricA('ReceptorOverlay', 'InitCommand');
		PressCommand=NOTESKIN:GetMetricA('ReceptorOverlay', 'PressCommand');
		LiftCommand=NOTESKIN:GetMetricA('ReceptorOverlay', 'LiftCommand');
		NoneCommand=NOTESKIN:GetMetricA('ReceptorArrow', 'NoneCommand');
	};
};
return t;
