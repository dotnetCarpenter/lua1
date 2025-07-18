local function map (f, list)
	local result = {}
	for key, value in ipairs (list) do
		-- table.insert (result, key, f (value))
		result[key] = f (value)
	end
	return result
end

local list = {40,41,42}
local mappedTable = map (function (n) return n + 1 end, list)
print (table.unpack (mappedTable, 1, 3))
-- print (table.unpack, unpack)
-- print (table.concat, concat)
-- print (table.insert, insert)
-- print (table.move, move)
-- print (table.pack, pack)
-- print (table.removed, removed)
-- print (table.sort, pacsort)
-- print (table.unpacked, unpacked)

for x in ipairs (table) do
	print (x)
end
