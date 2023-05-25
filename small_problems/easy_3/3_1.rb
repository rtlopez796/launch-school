def prompt(message)
  puts ">> #{message}"
end

def valid_number?(num)
  /^-?\d+(?:\.\d+)?$/.match(num)
end

user_array = []
loop do
  prompt("Enter the 1st number:")
  input = gets.chomp
  if valid_number?(input)
    user_array[0] = input.to_i
    break
  else
    prompt("Please enter a valid number.")
  end
end

loop do
prompt("Enter the 2nd number:")
  input = gets.chomp
  if valid_number?(input)
    user_array[1] = input.to_i
    break
  else
    prompt("Please enter a valid number.")
  end
end

loop do
  prompt("Enter the 3rd number:")
  input = gets.chomp
  if valid_number?(input)
    user_array[2] = input.to_i
    break
  else
    prompt("Please enter a valid number.")
  end
end

loop do
  prompt("Enter the 4th number:")
  input = gets.chomp
  if valid_number?(input)
    user_array[3] = input.to_i
    break
  else
    prompt("Please enter a valid number.")
  end
end

loop do
  prompt("Enter the 5th number:")
  input = gets.chomp
  if valid_number?(input)
    user_array[4] = input.to_i
    break
  else
    prompt("Please enter a valid number.")
  end
end

number = 0
loop do
  prompt("Enter the last number:")
  input = gets.chomp
  if valid_number?(input)
    number = input.to_i
    break
  else
    prompt("Please enter a valid number.")
  end
end

if user_array.bsearch{|x| x == number}
  prompt("The number #{number} appears in #{user_array}.")
else
  prompt("The number #{number} does not appear in #{user_array}.")
end