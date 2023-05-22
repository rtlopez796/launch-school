def triangle(side_length)
  stars = 1
  spaces = (side_length-1)
  until stars > side_length
    puts "#{' ' * (side_length - stars)}#{'*' * stars}"
    spaces -= 1
    stars += 1
  end
end

def flip_triangle(side_length)
  stars = side_length
  spaces = 0
  until stars == 0
    puts "#{' ' * (side_length - stars)}#{'*' * stars}"
    spaces += 1
    stars -= 1
  end
end

triangle(9)
flip_triangle(9)