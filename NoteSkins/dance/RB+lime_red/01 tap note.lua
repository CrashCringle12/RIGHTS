local a;

if GAMESTATE:GetCurrentStyle():GetName() == "solo" then 
	a = "_01";  	
else
	if Var "Button" == "Left" or Var "Button" == "Right" then
		a = "_01";
	else       
		a = "_02";          
	end;
end;

local t = Def.ActorFrame {
	Def.Sprite {
		Texture=a;
	};
};
return t;        