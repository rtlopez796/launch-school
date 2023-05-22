SQMETERS_TO_SQFEET = 10.7639

def valid_number?(num)
  /^-?\d+(?:\.\d+)?$/.match(num)
end

length = 0
loop do
  puts ">> Enter the length of the room in meters:"
  length = gets.chomp

  if valid_number?(length)
    length = length.to_f
    break
  else
    puts '>> Please enter a valid number.'
  end
end