function fail(err)
  print("plop")
  return ("\n ERROR: %s"):format(err or "")
end

function new(...)
  if (arg[1] == "1") then
    return fail("You have fail this city!")
  end
end

new(...)
