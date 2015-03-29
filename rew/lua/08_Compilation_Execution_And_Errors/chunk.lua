function dofile(filename)
  local f = asset(loadfile(filename))
  return f()
end

f = loadstring("i = i + 1")

i = 0
f(); print(i) --> 1
f(); print(i) --> 2


