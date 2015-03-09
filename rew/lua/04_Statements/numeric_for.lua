for i = 10,1,-1 do
  print(i)
end

print()
print("=== 1 ===")
print()

for i=1, 10 do print(i) end
max = i
print(i)

print()
print("=== 2 ===")
print()

-- find a value in a list
a = {1, 2, 3, 4, 5, ["n"]=5}

local found = 3
for i=1, a.n do
  if a[i] == value then
    found = i               --> save value of `i'
    break
  end
end
print(found)
