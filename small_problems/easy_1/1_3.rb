#original solution
=begin
def stringy(size)
  string = ''
  counter = 0
  while counter < size
    if counter % 2 == 0
      string << '1'
      counter += 1
    else
      string << '0'
      counter += 1
    end
  end
  return string
end
=end

def stringy(size, start=1)
  numbers = []

  size.times do |index|
    if start == 0
      number = index.even? ? 0:1
    else
      number = index.even? ? 1:0
    end
    numbers << number
  end
  
  numbers.join

end

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'