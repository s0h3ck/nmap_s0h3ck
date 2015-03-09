sin = math.sin;
days = {
  "Sunday",
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday"
}

print(days[4])  --> Wednesday

a = {x=0, y=0}
-- a = {}; a.x=0; a.y=0

print()
print("=== 1 ===")
print()

w = {x=0, y=0, label="console"}
x = {sin(0), sin(1), sin(2)}
w[1] = "another field"
x.f = w
print(w["x"])       --> 0
print(w[1])         --> another field
print(x.f[1])       --> another field
w.x = nil           -- remove field "x"

print()
print("=== 2 ===")
print()

i = 0
list = nil
for line in io.lines() do
  list = {next=list, value=line}
  i = i + 1
  if i > 2 then
    break
  end
end

l = list
while l do
  print(l.value)
  l = l.next
end

print()
print("=== 3 ===")
print()

polyline = {color="blue", thickness=2, npoints=4,
              {x=0,   y=0},
              {x=-10, y=0},
              {x=-10, y=1},
              {x=0,   y=1}
           }

print(polyline[2].x)    --> -10
print(polyline[1].y)    --> 0
print(polyline[3].y)    --> 1
print(polyline.color)   --> blue

print()
print("=== 4 ===")
print()

opnames = {["+"] = "add", ["-"] = "sub",
           ["*"] = "mul", ["/"] = "div"}

i = 20; s = "-"
a = {[i+0] = s, [i+1] = s..s, [i+2] = s..s..s}

print(opnames[s])     --> sub
print(a[21])          --> --
print(a[22])          --> ---

