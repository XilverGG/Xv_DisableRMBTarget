local x, y, tf = 0, GetTime, 0.2

function stopClick()
	x = y()
	MouselookStop()
end

WorldFrame:HookScript("OnMouseUp", function(self, button)
	if button == "RightButton" and not IsMouseButtonDown('RightButton') then
		if UnitAffectingCombat("player") then
			if tf + x < y() then
				stopClick()
			end
		end
	end
end)
