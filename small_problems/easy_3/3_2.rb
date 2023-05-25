def valid_number?(num)
  /^-?\d+(?:\.\d+)?$/.match(num)
end

def prompt(message)
  puts ">> #{message}"
end

def print_operations(num_1, num_2)
  prompt("#{num_1} + #{num_2} = #{num_1 + num_2}")
  prompt("#{num_1} - #{num_2} = #{num_1 - num_2}")
  prompt("#{num_1} * #{num_2} = #{num_1 * num_2}")
  if num_2 != 0
    prompt("#{num_1} / #{num_2} = #{num_1 / num_2}")
    prompt("#{num_1} % #{num_2} = #{num_1 % num_2}")
  else
    prompt("Cannot divide by zero.")
  end
  prompt("#{num_1} ** #{num_2} = #{num_1 ** num_2}")
end

num_1 = 0
loop do
  prompt("Enter the first number:")
  input = gets.chomp
  if valid_number?(input)
    num_1 = input.to_f
    break
  else
    prompt("Please enter a valid number.")
  end
end

num_2 = 0
loop do
  prompt("Enter the second number:")
  input = gets.chomp
  if valid_number?(input)
    num_2 = input.to_f
    break
  else
    prompt("Please enter a valid number.")
  end
end

print_operations(num_1, num_2)