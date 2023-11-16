local M = {}

M.sAngle ={} -- 90
M.bAngle = {} -- 0
M.effic = {} -- 0
M.prefSail = {} -- 0

M.switch = {} -- false

M.next = {} -- vmath.vector3(2722, 2345, 0)

function M.modifysAngle(id, value)
	M.sAngle[id] = value
	--print(id,value)
end

function M.modifybAngle(id, value)
	M.bAngle[id] = value
end

function M.modifyeffic(id, value)
	M.effic[id] = value
end

function M.modifyprefSail(id, value)
	M.prefSail[id] = value
end


function M.modifyswitch(id, value)
	M.switch[id] = value
end

function M.modifynext(id, value)
	M.next = value
end

return M

--