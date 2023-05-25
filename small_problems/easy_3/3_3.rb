=begin
def prompt(message)
  puts ">> #{message}"
end

prompt("Please enter a word or multiple words:")
str = gets.chomp

count = 0
str.each_char do |x|
  count += 1 if x != ' '
end

prompt("There are #{count} characters in \"#{str}\"")
=end

def prompt(message)
  puts ">> #{message}"
end

prompt("Please enter a word or multiple words:")
str = gets.chomp
new_str = str.delete " "

prompt("There are #{new_str.length} characters in \"#{str}\"")
  