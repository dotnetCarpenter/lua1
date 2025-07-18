local function measureExecutionTime (f)
	local startTime = os.time ()
	local result = f ()
	local endTime  = os.time ()
	return result, os.difftime (endTime, startTime)
end

local sub = function (a, b) return a - b end
local add = function (n) return n + 1 end

local function map (f, list)
	local result = {}
	for key, value in ipairs (list) do
		-- table.insert (result, key, f (value))
		result[key] = f (value)
	end
	return result
end

local each = coroutine.create (function (f, list)
	for _, value in ipairs (list) do
		coroutine.yield (f (value))
	end
end)

local function map2 (f)
	local result = {}
	return function (list)
		for key, _ in ipairs (list) do
			local status, intermediate = coroutine.resume (each, f, list)
			result[key] = intermediate
		end
		return result
	end
end


local list = {39, 40, 41}

local mappedTable, deltaForMap = measureExecutionTime (function () return map (add, list) end)
local mappedTable2, deltaForMap2 = measureExecutionTime (function () return map2 (add) (list) end)

print (table.unpack (mappedTable))
print ("map took " .. deltaForMap)

print (table.unpack (mappedTable2))
print ("map2 took " .. deltaForMap2)
-- print (table.unpack, unpack)
-- print (table.concat, concat)
-- print (table.insert, insert)
-- print (table.move, move)
-- print (table.pack, pack)
-- print (table.removed, removed)
-- print (table.sort, pacsort)
-- print (table.unpacked, unpacked)

-- for key, value in ipairs (list) do
-- 	print (value)
-- end
