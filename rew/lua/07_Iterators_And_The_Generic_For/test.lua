function fail(err)
  print("plop")
  return ("\n ERROR: %s"):format(err or "")
end

function new(...)
  print(arg[1])
  if (arg[1] == "1") then
    return fail("You have fail this city!")
  end
end

new(...)
