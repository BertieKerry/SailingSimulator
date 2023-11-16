local M = {}

local variable = require("main.modules.boat.variable") -- import variables
local funct = require("main/modules/funct") -- import useful functions


function M.init(self)
	if self.user == true then
		msg.post(".", "acquire_input_focus")
	end
	self.turnRate = 0.4 -- 0.4

	self.id = funct.trueID(go.get_id())
end

function M.on_input(self, action_id, action)
	if action_id == hash("a") then -- left
		variable.modifybAngle(self.id, variable.bAngle[self.id] + self.turnRate)
		if variable.bAngle[self.id] > 180 then -- keep boat within range
			variable.modifybAngle(self.id, variable.bAngle[self.id] - 360)
		end
		go.set_rotation(vmath.quat_rotation_z(math.rad(variable.bAngle[self.id]))) -- rotate boat

	elseif action_id == hash("d")  then  -- right
		variable.modifybAngle(self.id, variable.bAngle[self.id] - self.turnRate)
		if variable.bAngle[self.id] < -180 then
			variable.modifybAngle(self.id, variable.bAngle[self.id] + 360)
		end
		go.set_rotation(vmath.quat_rotation_z(math.rad(variable.bAngle[self.id])))
	end
end

return M