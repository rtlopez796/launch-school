require 'yaml'
MESSAGES = YAML.load_file('mortgage_msgs.yml')

def prompt(message)
  puts ">> #{message}"
end

def valid_number?(num)
  /^-?\d+(?:\.\d+)?$/.match(num)
end

loop do
  loan_amount = 0.0
  loop do
    prompt(MESSAGES['loan_amount'])
    loan_amount = gets.chomp

    if valid_number?(loan_amount)
      if loan_amount.empty?() || loan_amount.to_f <= 0
        prompt(MESSAGES['positive_num'])
        next
      end
      loan_amount = loan_amount.to_f
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  apr = 0.0
  loop do
    prompt(MESSAGES['apr'])
    apr = gets.chomp

    if valid_number?(apr)
      if apr.empty?() || apr.to_f <= 0
        prompt(MESSAGES['positive_num'])
        next
      end
      apr = apr.to_f / 100
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  loan_duration_years = 0
  loop do
    prompt(MESSAGES['loan_duration_years'])
    loan_duration_years = gets.chomp

    if valid_number?(loan_duration_years)
      if loan_duration_years.empty?() || loan_duration_years.to_i <= 0
        prompt(MESSAGES['positive_num'])
        next
      end
      loan_duration_years = loan_duration_years.to_i
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  monthly_interest_rate = apr / 12
  loan_duration_months = loan_duration_years * 12
  monthly_payment = loan_amount *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))

  prompt("Your monthly payment will be $#{format('%0.2f', monthly_payment)}.")

  prompt(MESSAGES['again'])
input = gets.chomp
  break unless input.downcase == 'y'
end

prompt(MESSAGES['goodbye'])
