function dofile(filename)
  local f = asset(loadfile(filename))
  return f()
end

f = loadstring("i = i + 1")

i = 0
f(); print(i) --> 1
f(); print(i) --> 2

f = loadstring("local a = 10; return a + 20")
print(f())    --> 30

--[[
print(loadstring("i i"))
  -- nil      [string "i i"]:1 `=' expected near `i'
]]

f = loadfile("foo.lua")

f()         -- defines `foo'
foo("ok")   --> ok

-- for clearer error messages, we use assert
-- assert(loadstring(s)())

local i = 0
f = loadstring("i = i + 1")
g = function () i = i + 1 end

print "enter your expression:"
local l = io.read()
local func = assert(loadstring("return " .. l))
print("the value of your expression is " .. func())

do
  print "enter function to be plotted (with variable `x'):"
  local l = io.read()
  local f = assert(loadstring("return " .. l)) -- x * 2
  for i = 1, 20 do
    x = i   -- global `x' (to be visible from the chunk)
    print(string.rep("*", f()))
  end
end
