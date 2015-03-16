a = {p = print}
a.p("Hello World")  --> Hello World
print = math.sin    -- `print' now refers to the sine function
a.p(print(1))       --> 0.841470
sin = a.p           -- `sin' now refers to the print function
sin(10, 20)         --> 10      20

-- syntactic sugar
foo = function (x) return 2*x end

sin(foo(10));

network = {
  {name = "grauna",   IP = "210.26.30.34"},
  {name = "arraial",  IP = "210.26.30.23"},
  {name = "lua",      IP = "210.26.23.12"},
  {name = "derain",   IP = "210.26.23.20"},
}

table.sort(network, function (a, b)
  return (a.name > b.name)
end)

for i, v in ipairs(network) do sin(network[i].name .. ' ' .. network[i].IP) end

print = sin

print()
print("=== 1 ===")
print()

function eraseTerminal()
  io.write("\27[2J")
end

-- wrties an `*' at `x' , row `y'
function mark (x,y)
  io.write(string.format("\27[%d;%dH*", y, x))
end

-- Terminal size
TermSize = {w = 80, h = 24}

-- plot a functon
-- (assume that domain and image are in the range [-1, 1])
function plot (f)
  eraseTerminal()
  for i=1, TermSize.w do
    local x = (i/TermSize.w)*2 - 1
    local y = (f(x) + 1)/2 * TermSize.h
    mark(i, y)
  end
  io.read()     -- wait before spoiling the screen
end

plot(function (x) return math.sin(x*2*math.pi) end) -- AWESOME !!! :D
