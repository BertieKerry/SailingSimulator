local M = {} 

local variable = require("main.modules.boat.variable") -- import variables
local sailData = require("main/modules/boat/sailData") -- import sail look-up table
local funct = require("main/modules/funct") -- import useful functions

function M.init(self)
	self.id = funct.trueID(go.get_id())
end

function M.update(self, dt)
	local sail = math.floor(math.abs(variable.sAngle[self.id])) -- normalise sail angle
	local boat = math.floor(math.abs(variable.bAngle[self.id])) -- normalise boat angle

	local velo = sailData.data[boat + 1][2] -- get maximum possible velocity of boat angle
	local prefSail = sailData.data[boat + 1][3] -- get optimum sail angle for boat angle


	local effic = velo - (0.01 * (math.abs(prefSail - sail))) -- efficiency = velocity - sail difference

	if effic < 0 then
		effic = 0 -- ensure number is not negative
	end

	variable.modifyeffic(self.id, effic) -- save efficiency in variables.lua file
	variable.modifyprefSail(self.id, prefSail)
end

return M