-- Regular stuff
print "hi"
print("hi")
-- String manipulation hell
print("h" .. "i")
print(("hi"):sub(1, 2))
print(("ih"):reverse())
print(("shit"):match("s(..)"))
-- RNG Manipulation
print(math.randomseed(861765) and string.char(math.random(420), math.random(420)))
-- Functions
print((function() return "hi" end)())
-- Reverse
print((function() local s, t = "ih", {} for i=s:len(),1,-1 do t[(s:len()-i)+1] = s:sub(i,i) end return table.concat(t) end)())
-- Bytes
print((function() local t = {} for i = 104, 105, 1 do t[#t + 1] = string.char(i) end return table.concat(t) end)())
-- Bogohi
print((function() local result = "" repeat local str = {} for i = 1, 2 do str[i] = string.char(math.random(48, 125)) end result = table.concat(str) until result == "hi" return result end)())
-- Bogohi 2
print((function() local answer = "hi" local result = "" for i=1,answer:len() do local add = "" repeat add = string.char(math.random(48, 125)) until add == answer:sub(i,i) result = result:gsub('()',{[i]=add}) end return result end)())
-- Metahi
print((function() local hi = {} setmetatable(hi, { __tostring = function(currtable) return "hi" end }) return (hi) end)())
-- Goto Hell
print((function() local hi = "";goto start;::out::;goto stop;::h::;hi = hi.."h";goto i;::start::;goto h;;::i::;hi = hi.."i";goto out;::stop::return hi end)())