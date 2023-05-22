=begin
def print_in_box(message)
  puts top_and_bottom(message)
  puts spacing(message)
  puts "| #{message} |"
  puts spacing(message)
  puts top_and_bottom(message)
end

def top_and_bottom(message)
  num_of_dashes = message.length + 2

  dashes = ''
  num_of_dashes.times do
  dashes << '-'
  end

  dashes = "+" + dashes + "+"

end

def spacing(message)
  num_of_spaces = message.length + 2

  spaces = ''
  num_of_spaces.times do
  spaces << ' '
  end

  spaces = "|" + spaces + "|"

end
=end

def print_in_box(message, terminal_size=80)
  if message.length <= terminal_size
    short_message(message)
  else
    long_message(message, terminal_size)
  end
end

def short_message(message)
  horizontal_rule = "+#{'-' * (message.length + 2)}+"
  empty_line = "|#{' ' * (message.length + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end

def long_message(message, max)
  line_1 = truncate(message, max)
  line_2 = message[max..]
  horizontal_rule = "+#{'-' * (line_1.length + 2)}+"
  empty_line = "|#{' ' * (line_1.length + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{line_1} |"
  puts "| #{line_2}#{' ' * (max - line_2.length)} |"
  puts empty_line
  puts horizontal_rule
end

def truncate(string, max)
  string.length > max ? "#{string[0...max]}" : string
end

print_in_box('To boldly go where no one has gone before.', 25)
print_in_box('')
