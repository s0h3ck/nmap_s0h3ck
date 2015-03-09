a, b = 10, 2*2

print(a)
print(b)

a, b = b, a

print()
print(a)
print(b)

print()
print("=== 1 ===");
print()

a, b, c = 0, 1
print(a,b,c);         --> 0   1   nil
a, b = a+1, b+1, b+2  --> value of b+2 is ignored
print(a,b)            --> 1   2
a, b, c = 0
print(a,b,c)          --> 0   nil nil

print()
print("=== 2 ===");
print()

a, b, c = 0, 3.1415900001, 0
print(a,b,c)          --> 0   0.0   0

-- a, b = f()





