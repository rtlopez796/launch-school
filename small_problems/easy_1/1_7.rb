def prompt(message)
  puts ">> #{message}"
end

loop do
  prompt('Enter a noun:')
  noun = gets.chomp

  prompt('Enter a verb:')
  verb = gets.chomp

  prompt('Enter an adjective:')
  adjective = gets.chomp

  prompt('Enter an adverb:')
  adverb = gets.chomp

  puts " Do you #{verb} your #{adjective} #{noun} #{adverb}?"
  prompt('Want to play again? (Y/N)')
  answer = gets.chomp

  break unless answer.downcase == 'y'
end