local ret = ... or {};

ret.RedirTable =
{
	Up = "Down",
	Down = "Down",
	Left = "Down",
	Right = "Down",
	UpLeft = "Down",
	UpRight = "Down",
};

local OldRedir = ret.Redir;

ret.Redir = function(sButton, sElement)
	sButton, sElement = OldRedir(sButton, sElement);

	--Point the head files back to the tap note
	if string.find(sElement, "Head") or sElement == "Tap Fake" then
		sElement = "Tap Note";
	end

	sButton = ret.RedirTable[sButton];

	return sButton, sElement;
end

local OldFunc = ret.Load;
function ret.Load()
	local t = OldFunc();

	--Explosion should not be rotated; it calls other actors.
	if Var "Element" == "Explosion"	then
		t.BaseRotationZ = nil;
	end
	return t;
end

ret.PartsToRotate =
{
	["Receptor"] = true,
	["Tap Note"] = true,
	["Tap Lift"] = true,
	["Tap Fake"] = true,
	["Ready Receptor"] = true,
	["Tap Explosion Bright W1"] = true,
	["Tap Explosion Dim W1"] = true,
	["Tap Explosion Bright W2"] = true,
	["Tap Explosion Dim W2"] = true,
	["Tap Explosion Bright W3"] = true,
	["Tap Explosion Dim W3"] = true,
	["Tap Explosion Bright W4"] = true,
	["Tap Explosion Dim W4"] = true,
	["Tap Explosion Bright W5"] = true,
	["Tap Explosion Dim W5"] = true,
	["Hold Head Active"] = true,
	["Hold Head Inactive"] = true,
	["Roll Head Active"] = true,
	["Roll Head Inactive"] = true
};
ret.Rotate =
{
	Up = 180,
	Down = 0,
	Left = 90,
	Right = -90,
	UpLeft = 135,
	UpRight = 225,
};

ret.Blank =
{
	["Hold Explosion"] = true,
	["Roll Explosion"] = true,
	["Hold Topcap Active"] = true,
	["Hold Topcap Inactive"] = true,
	["Roll Topcap Active"] = true,
	["Roll Topcap Inactive"] = true,
	["Hold Tail Active"] = true,
	["Hold Tail Inactive"] = true,
	["Roll Tail Active"] = true,
	["Roll Tail Inactive"] = true,
};

return ret;
