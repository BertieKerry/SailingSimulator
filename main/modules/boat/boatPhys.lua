local M = {}

local variable = require("main.modules.boat.variable") -- import variables
local funct = require("main/modules/funct") -- import useful functions

function M.init(self)
	self.velo = vmath.vector3() -- declare velocity vector3

	self.accelCoef = 200 -- 200
	self.dragCoef = 0.5 -- 0.5
	self.leeway = 0.1 -- 0.1

	self.id = funct.trueID(go.get_id())
end

function M.update(self, dt, thing)
	self.direction = vmath.normalize(funct.angleToVector(variable.bAngle[self.id])) -- convert boat angle into normalized direction vector

	local accel = (self.direction * self.accelCoef) * variable.effic[self.id] -- acceleration vector downgraded by effic
	local dv = accel * dt -- velocity in the current frame 

	local dragAccel = self.velo * -self.dragCoef -- drag force in the opposite direction
	local dd = dragAccel * dt -- drag in the current frame

	dv = dv + dd -- velocity minus drag

	local v0 = self.velo -- velocity before
	local v1 = self.velo + dv -- velocity after
	local movement = (v0 + v1) * dt * 0.5 -- distance traveled
	movement.y = movement.y - self.leeway -- minus leeway force in the y direction
	local position = go.get_position() -- get the current boat position
	go.set_position(position + movement) -- add movement
	self.velo = v1 -- save the new velocity
	--print(self.velo)
end

return M