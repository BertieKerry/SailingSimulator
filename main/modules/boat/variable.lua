local M = {}

M.sAngle ={} -- 90
M.bAngle = {} -- 0
M.effic = {} -- 0
M.prefSail = {} -- 0

M.switch = {} -- false

M.course = {vmath.vector3(750, 350, 0)}
M.next = {} -- vmath.vector3(2722, 2345, 0)

M.leaderboard = {}

M.id = nil

M.velo = {}

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

function M.modifycourse(value)
	M.course = value
end

function M.modifynext(id, value)
	M.next[id] = value
end


function M.leaderboardappend(value)
	table.insert(M.leaderboard, value)
end

function M.modifyid(value)
	M.id = value
end

function M.modifyvelo(id, value)
	M.velo[id] = value
	--print(id,value)
end

return M

--