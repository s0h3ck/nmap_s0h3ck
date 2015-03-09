revDays = {["Sunday"] = 1, ["Monday"] = 2,
            ["Tuesday"] = 3, ["Wednesday"] = 4,
            ["Thursday"] = 5, ["Friday"] = 6,
            ["Saturday"] = 7}

--print all keys of table `t'
for k in pairs(revDays) do print(k) end

x = "Tuesday"
print(revDays[x])     --> 3


days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
revDays = {}
for i, v in ipairs(days) do
  revDays[v] = i
end

-- print all keys of array 'revDays'
for k in pairs(revDays) do
  print(k)
end
