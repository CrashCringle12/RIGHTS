-- Haggen Daze

local ret = ... or {};

ret.RedirTable =
{
	Up = "01",
	Down = "01",
	Left = "01",
	Right = "01",
	UpLeft = "02",
	UpRight = "02",
};

local OldRedir = ret.Redir;
ret.Redir = function(sButton, sElement)
	-- sButton, sElement = OldRedir(sButton, sElement);

	-- Instead of separate hold heads, use the tap note graphics.

	
	if sElement == "Tap Fake"
	then
		sElement = "Tap Note";
	end
	                           
	if sElement == "Roll Tail Active"
	then
		sElement = "Hold Tail Active";
	end
	
	if sElement == "Hold Bottomcap Inactive"
	then
		sElement = "Hold Bottomcap Active";
	end
                                
	if sElement == "Roll Bottomcap Inactive"
	then
		sElement = "Roll Bottomcap Active";
	end
  
	if sElement == "Hold Topcap Inactive"
	then
		sElement = "Hold Topcap Active";
	end
                                        
                                 
	if sElement == "Roll Topcap Inactive"
	then
		sElement = "Roll Topcap Active";
	end
  
	if sElement == "Hold Head Inactive"
	then
		sElement = "Hold Head Active";
	end      
                          
	if sElement == "Roll Head Inactive"
	then
		sElement = "Roll Head Active";
	end      
  
	if sElement == "Hold Body Inactive"
	then
		sElement = "Hold Body Active";
	end                                   
  
	if sElement == "Roll Body Inactive"
	then
		sElement = "Roll Body Active";
	end      
	
	sButton = ret.RedirTable[sButton];

	return sButton, sElement;
end

-- local OldRedir = ret.Redir;
-- ret.Redir = function(sButton, sElement)
	-- sButton = ret.RedirTable[sButton];
	-- return sButton, sElement;
-- end

-- To have separate graphics for each hold part:
local OldRedir = ret.Redir;
ret.Redir = function(sButton, sElement)
	-- Redirect non-hold, non-roll parts.
	if string.find(sElement, "hold") or string.find(sElement, "roll") then
		return sButton, sElement;
	end
	return OldRedir(sButton, sElement);
end

--[[
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
]]

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
	["Go Receptor"] = true,
	["Ready Receptor"] = true,
	["Tap Explosion Bright"] = true,
	["Tap Explosion Dim"] = true,
	["Tap Note"] = true,
	["Tap Fake"] = true,
	["Tap Lift"] = true,
	["Hold Head Active"] = true,
	["Hold Head Inactive"] = true,
	["Roll Head Active"] = true,
	["Roll Head Inactive"] = true,
	["Hold Explosion"] = true,
	["Roll Explosion"] = true,
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

--
-- If a derived skin wants to have separate UpLeft graphics,
-- use this:
--
-- ret.RedirTable.UpLeft = "UpLeft";
-- ret.RedirTable.UpRight = "UpLeft";
-- ret.Rotate.UpLeft = 0;
-- ret.Rotate.UpRight = 90;
--
ret.Blank =
{
	["Hold Tail Inactive"] = true,
	["Roll Tail Inactive"] = true,
};

return ret;
