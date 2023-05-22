def calculate_sum(number)
  sum = 0
  1.upto(number) { |i| sum += i }
  sum
end

def calculate_product(number)
  product = 1
  1.upto(number) { |i| product *= i}
  product
end

puts '>> Please enter an integer greater than 0:'
max = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.downcase

if operation == 'p'
  product = calculate_product(max)
  puts ">>The product of the integers between 1 and #{max} is #{product}."
elsif operation == 's'
  sum = calculate_sum(max)
  puts ">> The sum of the integers between 1 and #{max} is #{sum}."
else
  puts ">> Unknown operation. Must enter 's' for sum or 'p' for product."
end
