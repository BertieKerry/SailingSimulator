local myArray = {}

for i = 1, 20 do
	table.insert(myArray, i)
end

return {
	[1] = { sequence = myArray, trigger = false, frequency = 10 },
}