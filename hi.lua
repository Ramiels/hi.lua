
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
-- Actually malicious
print((function() local c=string.rep('\0',300000) local n=1 local s = "" local function p(u) for i=1,#u do local x=u:sub(i,i) if x==">"then n=n+1 end if x=="<"then n=n-1 end if x=="."then s = s..(c:sub(n,n))end if x=="["then p(u:sub(i+1))return end if x=="]"then if c:byte(n,n)~=0 then p(u)return end end if x=="+"then c=c:sub(1,n-1)..string.char((c:byte(n,n)+1) % 256)..c:sub(n+1)end if x=="-"then c=c:sub(1,n-1)..string.char((c:byte(n,n)-1) % 256)..c:sub(n+1)end end end p([[++++++++[>+>++>+++>+ +++>+++++>++++++>+++++++>++++++++>+++++++++>++++++++++>+++++++++++>++++++++++++>+++++++++++++>++++++++++++++>+++++++++++++++>++++++++++++++++<<<<<<<<<<<<<<<<-]>>>>>>>>>>>>>.<<<<<<<<<<<<<>>>>>>>>>>>>>+.-<<<<<<<<<<<<<>++.--<.]]) return(s) end)())