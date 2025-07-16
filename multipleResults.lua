local function values()
    return 3, 7
end

-- destructoring
a, b = values()
print(a)
print(b)

-- _ still has the value 3, so I guess this is convention
_, c = values()
print(c)

-- print all return values
print (values ())
print ({values ()})
print (table.unpack ({values ()}))
