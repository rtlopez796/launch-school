=begin
START

Given an 2 integers called  "x" and "y"

SET answer = numbers[0] + numbers[1]

PRINT answer

END
=end

def add(x, y)
  answer = x + y
  puts answer
end

add(5, 8)

=begin
START

Given and array of strings called "arr"

SET new_string = ""

FOR each string in arr
  string += " "
  new_string += string
ENDFOR

PRINT new_string

END
=end

def concatenate(arr)
  new_string = ""

  arr.each do |string|
    string += " " 
    new_string += string
  end

  puts new_string

end

concatenate(["hi", "there"])

=begin
START

Given an array of integers called "arr"

new_arr = []

FOR each int in arr
  IF index of int is 0 or even THEN PUSH to new_arr
  RETURN new_arr
ENDFOR

END
=end

def every_other(arr)
  new_arr = []

  arr.each_index do |index|
    if index == 0 || index % 2 == 0
      new_arr << arr[index]
    end
  end
  return new_arr
end

p every_other([1,4,7,2,5])
