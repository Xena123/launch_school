VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  puts "=> #{message}"
end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
      (player == 'scissors' && computer == 'paper') ||
      (player == 'paper' && computer == 'rock')
    prompt("You win!")
  elsif (player == 'scissors' && computer == 'rock') ||
        (player == 'paper' && computer == 'scissors') ||
        (player == 'rock' && computer == 'paper')
    prompt("Computer wins!")
  else
    prompt("It's a tie!")
  end
end

choice = ''

loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}, computer chose #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again? (y for yes, any other input will end the game")
  answer = gets.chomp
  break unless answer.downcase == 'y'
end
