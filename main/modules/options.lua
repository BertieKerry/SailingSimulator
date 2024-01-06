local M = {}

M.course = 1
M.boatType = 1
M.boats = nil -- number


function M.modifycourse(value)
	M.course = value
end

function M.modifyboatType(value)
	M.boatType = value
end

function M.modifyboats(value)
	M.boats = value
end

return M