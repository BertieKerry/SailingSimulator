local M = {}

M.sAngle = 90
M.bAngle = 0
M.effic = 0

M.switch = false

function M.modifysAngle(value)
	M.sAngle = value
end

function M.modifybAngle(value)
	M.bAngle = value
end

function M.modifyeffic(value)
	M.effic = value
end


function M.modifyswitch(value)
	M.switch = value
end

return M

--