local list = {
  "one"
, "two"
, "three"
, "four"
, "five"
, "six"
, "seven"
, "eight"
, "nine"
, "ten"
, "eleven"
, "twelve"
, "thirteen"
, "fourteen"
, "fifteen"
, "sixteen"
, "seventeen"
, "eighteen"
, "nineteen"
, "twenty"
, "twenty-one"
, "twenty-two"
, "twenty-three"
, "twenty-four"
, "twenty-five"
, "twenty-six"
, "twenty-seven"
, "twenty-eight"
, "twenty-nine"
, "thirty"
, "thirty-one"
, "thirty-two"
, "thirty-three"
, "thirty-four"
, "thirty-five"
, "thirty-six"
, "thirty-seven"
, "thirty-eight"
, "thirty-nine"
, "forty"
, "forty-one"
, "forty-two"
, "forty-three"
, "forty-four"
, "forty-five"
, "forty-six"
, "forty-seven"
, "forty-eight"
, "forty-nine"
, "fifty"
, "fifty-one"
, "fifty-two"
, "fifty-three"
, "fifty-four"
, "fifty-five"
, "fifty-six"
, "fifty-seven"
, "fifty-eight"
, "fifty-nine"
, "sixty"
, "sixty-one"
, "sixty-two"
, "sixty-three"
, "sixty-four"
, "sixty-five"
, "sixty-six"
, "sixty-seven"
, "sixty-eight"
, "sixty-nine"
, "seventy"
, "seventy-one"
, "seventy-two"
, "seventy-three"
, "seventy-four"
, "seventy-five"
, "seventy-six"
, "seventy-seven"
, "seventy-eight"
, "seventy-nine"
, "eighty"
, "eighty-one"
, "eighty-two"
, "eighty-three"
, "eighty-four"
, "eighty-five"
, "eighty-six"
, "eighty-seven"
, "eighty-eight"
, "eighty-nine"
, "ninety"
, "ninety-one"
, "ninety-two"
, "ninety-three"
, "ninety-four"
, "ninety-five"
, "ninety-six"
, "ninety-seven"
, "ninety-eight"
, "ninety-nine"
, "one-hundred"
}

-- 💁‍♂️ Programming tip: To remove an element from anywhere in an unordered array without expensive shifting,
-- simply replace it with the last element, then reduce the array size by 1. 🤓👍
-- quote Awesomekling
local function remove (list, x)
	for key, value in pairs (list) do
		if value == x then
			local lastIndex = #list
			list[key] = list[lastIndex]
			list[lastIndex] = nil
			break
		end
	end

	return list
end

print (list[#list], "length is " .. #list)

print (
	remove (list, "ninety")
)

print (list[#list], "length is " .. #list)

print ("Printing the entire array")
for key, value in ipairs (list) do
	print (key .. ": " .. value)
end