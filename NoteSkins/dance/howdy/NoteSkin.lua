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
	--Point the head files back to the tap note
	if string.find(sElement, "Head") then
		sElement = "Tap Note";
	end
	
	if string.find(sElement, "Tap Note") then
		if sButton == "Down" or sButton == "Up" then
			sButton = "Up"
		else
			sButton = "Down"
		end
	else
		sButton, sElement = OldRedir(sButton, sElement);
	end

	return sButton, sElement;
end

local OldFunc = ret.Load;
function ret.Load()
	local t = OldFunc();

	-- The main "Explosion" part just loads other actors; don't rotate
	-- it.  The "Hold Explosion" part should not be rotated.
	if Var "Element" == "Explosion" or
	   Var "Element" == "Roll Explosion" then
		t.BaseRotationZ = nil;
	end
	return t;
end

ret.PartsToRotate =
{
	["Receptor"] = true,
	["Tap Note"] = true,
	["Tap Fake"] = true,
	["Tap Lift"] = true,
	["Ready Receptor"] = true,
	["Tap Explosion Bright"] = true,
	["Tap Explosion Dim"] = true,
	["Hold Explosion"] = true,
	["Hold Head Active"] = true,
	["Hold Head Inactive"] = true,
	["Roll Head Active"] = true,
	["Roll Head Inactive"] = true,
};
ret.Rotate =
{
	Up = 0,
	Down = 0,
	Left = 0,
	Right = 0,
	UpLeft = 0,
	UpRight = 0,
};

ret.Blank =
{
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
