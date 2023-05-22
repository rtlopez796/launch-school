def negative(number)
  if !valid_number?(number)
    "Invalid number"
  elsif number == 0
    0
  elsif number > 0
    number * -1
  else
    number
  end
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0