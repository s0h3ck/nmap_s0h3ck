
-- not local fact = function ... (buggy)
local fact
fact = function (n)
  if n == 0 then return 1
  else return n*fact(n-1)
  end
end

local function fact_v2 (n)
  if n == 0 then return 1
  else return n*fact_v2(n-1)
  end
end

print(fact(5))
print(fact_v2(5))


