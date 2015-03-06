io.write("#num ? : ");  -- ask number
line = io.read()        -- read a line
n = tonumber(line)      -- try to convert it to a number

-- Testing step.
if n == nil then
    error(line .. " is not a valid number")
else
   print("#num: " .. n);
end
