local M = {}

local variable = require("main.modules.boat.variable") -- import variables
local funct = require("main/modules/funct") -- import useful functions

function M.init(self)
	if self.user == true then
		msg.post(".", "acquire_input_focus")
	end
	self.sheetRate = 0.5 -- 0.5
	self.id = funct.trueID(go.get_id())
	self.status = false
	self.sailStatus = false -- anti-repeat
end

function M.on_input(self, action_id, action)
	if action_id == hash("up") and variable.sAngle[self.id] < 90 then  -- out
		variable.modifysAngle(self.id, variable.sAngle[self.id] + self.sheetRate) -- add sheetRate
		go.set_rotation(vmath.quat_rotation_z(math.rad(variable.sAngle[self.id])),"boom")
	elseif action_id == hash("down") and variable.sAngle[self.id] > 0.5 then -- in
		variable.modifysAngle(self.id, variable.sAngle[self.id] - self.sheetRate) -- minus sheetRate
		go.set_rotation(vmath.quat_rotation_z(math.rad(variable.sAngle[self.id])),"boom")
	end
end

function M.update(self, dt)
	if variable.bAngle[self.id] > 0 and self.status == false then -- checks if sail is on different side
		go.set_rotation(vmath.quat_rotation_z(math.rad(180)), ".")
		go.set_rotation(vmath.quat_rotation_y(math.rad(180)), ".")
		self.status = true -- toggle anti-repeat
	elseif variable.bAngle[self.id] < 0 and self.status == true then
		go.set_rotation(vmath.quat_rotation_z(0))
		go.set_rotation(vmath.quat_rotation_y(0))
		self.status = false
	end

	if variable.effic[self.id]==0 and self.sailStatus == false then -- if flap message received
		sprite.play_flipbook("boom#boom", "flap") -- set sail to flap animation
		self.sailStatus = true -- toggle anti-repeat
	elseif variable.effic[self.id]~=0 and self.sailStatus == true then
		sprite.play_flipbook("boom#boom", "boom") -- set sail to fill animation
		self.sailStatus = false
	end
end

return M