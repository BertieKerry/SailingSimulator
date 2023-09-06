local funct = {}

function funct.angleToVector(angle)  -- converts degrees to vector3

	local x =  math.cos(math.rad(angle+90))
	local y =  math.sin(math.rad(angle+90))
	local z = 0
	return vmath.vector3(x, y, z)
end

return funct

--