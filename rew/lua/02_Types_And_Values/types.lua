print(type("Hello world"))  --> string
print(type(10.4*3))         --> number
print(type(print))          --> function
print(type(type))           --> function
print(type(false))          --> boolean
print(type(nil))            --> nil
print(type(type(X)))        --> string

--[[
Here is a block of comments
--]]
print();

print(type(a))              --> nil
a = 10                     
print(type(a))              --> number
a = "a string!!"
print(type(a))              --> string
a = print                   --> yes, this is valid!
a(type(a))                  --> function

