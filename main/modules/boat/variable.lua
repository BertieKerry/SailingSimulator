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

M.ran20 = {2, 19, 14, 12, 17, 2, 17, 12, 6, 3, 2, 10, 20, 19, 12, 15, 17, 6, 1, 13}


function M.popran20()
	table.remove(M.ran20,1)
end

M.ran40 = {10, 30, 11, 20, 5, 35, 34, 16, 32, 15, 39, 38, 17, 32, 9, 24, 2, 20, 34, 12, 12, 22, 8, 3, 23, 4, 21, 35, 35, 29, 1, 37, 8, 16, 36, 34, 39, 8, 26, 32}



function M.popran40()
	table.remove(M.ran40,1)
	
end

return M

--