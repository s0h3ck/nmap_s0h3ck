s, e = string.find("hello Lua users", "Lua")

print(s, e)     --> 7   9

s, e = string.find("hello Lua users", "zoo")

print(s, e)     --> nil   nil

s, e = string.find("hello Lua users", "hello")

print(s, e)     --> 1     5

function maximum (a)
  local mi = 1
  local  m = a[mi]
  for i, val in ipairs(a) do
    if val > m then
      mi = i
      m = val
    end
  end
  return m, mi
end

print(maximum({8,10,23,13,5})) --> 23    3

print()
print("=== 1 ===");
print()

-- unpack (generic call mechanism)
print(unpack{10,20,30})   --> 10    20    30
a,b = unpack{10,20,30}

a = {1,2,3}

f = string.find
a = {"hello", "ll"}

print(f(unpack(a)))

print()
print("=== 2 ===")
print()

function unpack (t, i)
  i = i or 1
  if t[i] ~= nil then
    return t[i], unpack(t, i + 1)
  end
end

print(unpack({2,3,4}, 2))


f(unpack(a))        -- 3    4

function unpack(t, i)
  i = i or 1
  if t[i] ~= nil then
    return t[i], unpack(t, i + 1)
  end
end
