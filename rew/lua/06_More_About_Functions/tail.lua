-- term proper tail recursion
-- tail call is a kind of goto dressed as a call

function g (x)
  return x*2
end

function f(x)
  return g(x)
end

print(f(8))

function foo (n)
  if n > 0 then return foo(n - 1) end
end

print()
print("=== maze's game :) ===");
print()
