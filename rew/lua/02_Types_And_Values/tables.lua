a = {}      -- create a table and store its reference in 'a'
k = "x"
a[k] = 10           -- new entry, with key="x" and value=10
a[20] = "great"     -- new entry, with key=20 and value="great"
print(a["x"])       --> 10
k = 20
print(a[k])         --> "great"
a["x"] = a["x"] + 1 -- increments entry "x"
print(a["x"])       --> 11

print()
print("-- 1 --")
print()

a = {}
a["x"] = 10
b = a               -- `b' refers to the same table as `a'
print(b["x"])       --> 10
print(b[k])         --> nil
print(k)            --> 20
b["x"] = 20
print(a["x"])       --> 20
a = nil             -- now only `b' still refers to the table
b = nil             -- now there are no references left to the table

print()
print("-- 2 --");
print()

a = {}              -- empty table
-- create 1000 new entries
for i=1,1000 do a[i] = i*2 end
print(a[9])         --> 18
a["x"] = 10
print(a["x"])       --> 10
print(a["y"])       --> nil
print(a[1000])      --> 2000
print(a[1001])      --> nil
print(a[0])         --> nil
print(a[1])         --> 2
print(a[4])         --> 8

print()
print("-- 3 --");
print()

a.x = 10            -- same as a["x"] = 10
print(a.x)          -- same as print(a["x"])
print(a.y)          -- same as print(a["y"])

print()
print("-- 4 --");
print()

a = {}
x = "y"
a[x] = 10           -- put 10 in field "y"
print(a[x]) --> 10  -- value of field "y"
print(a.x)  --> nil -- value of field "x" (undefined)
print(a.y)  --> 10  -- value of field "y"
print(a[100]) --> nil

print()
print("-- 5 --");
print()

-- read 10 lines storing them in a table
a = {}
for i=1,10 do
    a[i] = io.read()
end

--print the lines
for i,line in ipairs(a) do
    print(line)
end

print()
print("-- 6 --");
print()

i = 10; j = "10"; k = "+10"
a = {}
a[i] = "one value"
a[j] = "another value"
a[k] = "yet another value"
print(a[j])             --> another value
print(a[k])             --> yet another value
print(a[tonumber(j)])   --> one value
print(a[tonumber(k)])   --> yet another value
print(a[i])             --> another value







