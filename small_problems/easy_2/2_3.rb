def valid_number?(num)
  /^-?\d+(?:\.\d+)?$/.match(num)
end

def calculate_tip(bill, tip)
  bill * (tip / 100)
end

bill = 0
loop do
  puts '>> How much is the bill?'
  bill = gets.chomp

  if valid_number?(bill)
    bill = bill.to_f
    break
  else
    puts '>> Please enter a valid number.'
  end
end

tip = 0
loop do
  puts '>> What percentage would you like to tip?'
  tip = gets.chomp
  
  if valid_number?(tip)
    tip = tip.to_f
    break
  else
    puts '>> Please enter a valid number.'
  end
end

tip_amount = calculate_tip(bill, tip)
total = bill + tip_amount

puts ">> The tip is $#{format('%0.2f', tip_amount)}."
puts ">> The total is $#{format('%0.2f', total)}."