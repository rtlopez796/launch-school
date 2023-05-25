=begin
def xor?(arg1, arg2)
  if arg1 && arg2
    false
  elsif !arg1 && !arg2
    false
  else 
    true
  end
end
=end

def xor?(value1, value2)
  ((value1 && !value2) || (value2 && !value1))
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false