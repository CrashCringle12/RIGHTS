local reversed = 1;
if GAMESTATE:IsHumanPlayer(PLAYER_1) then
if GAMESTATE:PlayerIsUsingModifier( PLAYER_1, "reverse" ) then
			reversed = 1;
			else
			reversed = -1;
			end
elseif GAMESTATE:IsHumanPlayer(PLAYER_2) then
if GAMESTATE:PlayerIsUsingModifier( PLAYER_2, "reverse" ) then
			reversed = 1;
			else
			reversed = -1;
			end
end

return Def.ActorFrame
{
	LoadActor("flash")..{
	InitCommand=function(self)
		self:zoomy(reversed);
		self:blend('BlendMode_Add');
		self:diffuseblink();
		self:effectperiod(0.2);
		self:effectcolor1(color("1,1,1,0"));
		self:effectcolor2(color("1,1,1,1"));
	end;
	};
};
