local M = {}

M.sAngle = 0
M.bAngle = -1
M.effic = 0

function M.modifysAngle(value)
	M.sAngle = value
end

function M.modifybAngle(value)
	M.bAngle = value
end

function M.modifyeffic(value)
	M.effic = value
end

return M