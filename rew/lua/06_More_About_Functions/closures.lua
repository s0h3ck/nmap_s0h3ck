names = {"Peter", "Paul", "Mary"}
grades = {Mary = 10, Paul = 7, Peter = 8}
table.sort(names, function(n1, n2)
  return grades[n1] > grades[n2]       -- compare the grades
end)

function sortbygrade (names, grades)
  table.sort(names, function (n1, n2)
    return grades[n1] > grades[n2]    -- compare the grades
  end)
end

function counter()
  local i = 0
  return function ()    -- anonymous function
    i = i + 1
    return i
  end
end

a = counter()
b = counter()

print(a())
print(b())
print(a())
print(a())

do
  local oldSin = math.sin
  local k = math.pi/180
  math.sin = function (x)
    return oldSin(x*k)
  end
end

print(math.sin(60))
print(math.sin(180))

do
  local oldOpen = io.open
  io.open = function (filename, mode)
    if access_OK(filename, mode) then -- need to define access_OK
      return oldOpen(filename, mode)
    else
      return nil, "access denied"
    end
  end
end

-- io.open("foo.txt", "r+")
