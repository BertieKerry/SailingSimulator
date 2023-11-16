local funct = {}

function funct.angleToVector(angle)  -- converts degrees to vector3
	local x =  math.cos(math.rad(angle+90))
	local y =  math.sin(math.rad(angle+90))
	local z = 0
	return vmath.vector3(x, y, z)
end

function funct.trueID(oldID)
	id = oldID
	
	while go.get_parent(id) ~= nil do
		id = go.get_parent(id)
	end	
	id = tostring(id)
	return id
end

function funct.dump(o) -- DELETE LATER --DELETE LATER PLEASE --NOT MY WORK
	if type(o) == 'table' then
		local s = '{ '
		for k,v in pairs(o) do
			if type(k) ~= 'number' then k = '"'..k..'"' end
			s = s .. '['..k..'] = ' .. dump(v) .. ','
		end
		return s .. '} '
	else
		return tostring(o)
	end
end
return funct

--