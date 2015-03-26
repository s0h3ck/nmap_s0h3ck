function allwords (f)
  -- repeat for each line in the line
  for l in io.lines() do
    -- repeat for each word in the line
    for w in string.gmatch(l, "%w+") do
      -- call the function
      f(w)
    end
  end
end

allwords(print)

local count = 0
allwords(function (w)
  if w == "hello" then count = count + 1 end
end)
print(count)

local count = 0
for w in allwords() do
  if w == "hello" then count = count + 1 end
end
print(count)
