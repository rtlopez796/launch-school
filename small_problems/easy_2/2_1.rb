name = 'Teddy'
age = rand(20..200)

puts ">> What's your name?"
input_1 = gets.chomp
if input_1 != ''
  name = input_1
end

puts ">> How old are you?"
input_2 = gets.chomp
if input_2 != ''
  age = input_2
end

puts "#{name.capitalize} is #{age} years old!"