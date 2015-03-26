a = {"one", "two", "three"}
for i, v in ipairs(a) do
  print(i, v)
end

function iter (a, i)
  i = i + 1
  local v = a[i]
  if v then
    return i, v
  end
end

function ipairs (a)
  return iter, a, 0
end

function pairs (t)
  return next, t, nil
end

t = {"ok", "ko", "o", "k"}

for k, v in next, t do
  print(k, v)
end
