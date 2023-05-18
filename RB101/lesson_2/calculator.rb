require 'yaml'
MESSAGES = YAML.load_file('calculator_msgs.yml')

# format user prompts
def prompt(message)
  puts ">> #{message}"
end

def valid_number?(num)
  /^-?\d+(?:\.\d+)?$/.match(num)
end

def operation_to_msg(str)
  case str
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

name = ''
loop do
  prompt(MESSAGES['welcome'])
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do
  # ask the user for two numbers
  num1 = ''
  loop do
    prompt(MESSAGES['num1'])
    num1 = gets.chomp

    if valid_number?(num1) 
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  num2 = ''
  loop do
    prompt(MESSAGES['num2'])
    num2 = gets.chomp

    if valid_number?(num2) 
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  # ask the user for an operator
  operator_prompt = <<-MSG
  >> What operation would you like to perform? 
  1) add 
  2) subtract 
  3) multiply 
  4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['invalid_op'])
    end
  end

  prompt("#{operation_to_msg(operator)} the two numbers...")

  # perform the operation on the two numbers
  result = case operator
        when '1'
          num1.to_i + num2.to_i
        when '2'
          num1.to_i - num2.to_i
        when '3'
          num1.to_i * num2.to_i
        when '4'
          num1.to_f / num2.to_f
        end

  # output the result
  prompt("The result is #{result}")
  
  prompt(MESSAGES['again'])
  resp = gets.chomp
  break unless resp.downcase == 'y'
end

prompt(MESSAGES['goodbye'])
