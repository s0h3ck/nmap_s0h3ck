printResult = ""

--[[
function print (...)
  for i,v in ipairs(arg) do
    printResult = printResult .. tostring(v) .. "\t"
  end
  printResult = printResult .. "\n"
end
]]

print(select(2, string.find("hello hello", "ll")))

print(string.find("hello hello", " hel"))         --> 6  9
print(select(1, string.find("hello hello", " hel"))) --> 6
print(select(2, string.find("hello hello", " hel"))) --> 9

function test(n, ...)
  return arg[n]
end

print()
print("-=-")
print()

print(test(1,arg))    -- the third element of arg ... because it starts at -1

function fwrite (fmt, ...)
  return io.write(string.format(fmt, unpack(arg)))
end
