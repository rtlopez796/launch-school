VALID_CHOICES = %W(rock paper scissors lizard spock)

def prompt(message)
  puts ">> #{message}"
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock'))
end

def display_results(player, computer)
  if player == computer
    prompt("It's a tie!")
  elsif win?(player, computer)
    prompt("You won!")
  else
    prompt("Computer won!")
  end
end

player_score = 0
computer_score = 0
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Please enter a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Comuter chose: #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1
  end

  prompt("Current Score: \n Player: #{player_score} \n Computer: #{computer_score}")

  if (player_score == 2 && computer_score == 0) || player_score == 3
    prompt("You won!")
    break
  elsif (computer_score == 2 && player_score == 0) || computer_score == 3
    prompt("Computer won!")
    break
  end
end