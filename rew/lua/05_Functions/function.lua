print "Hello world"       -- print("Hello world")
dofile 'a.lua'            -- dofile('a.lua')
print [[ a multi-line    
  message ]]              -- print([[a multi-line message]])
function f() end
f{x=10, y=20}             -- f({x=10, y=20})
type{}                    -- type({})

-- add all elements of array 'a'
a = {1, 2, 3}
function add(a)
  local sum = 0
  for i,v in ipairs(a) do
    sum = sum + v
  end
    return sum
end

print(add(a))

print()
print("=== 1 ===")
print()

function g(a, b) return a or b end

print(g(3))
print(g(3, 4))
print(g(3, 4, 5))

function incCount(n)
  n = n or 1
  count = count + n
end
