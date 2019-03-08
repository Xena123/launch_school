VALID_CHOICES = %w(rock paper scissors spock lizard)

SHORTCUTS = {
  'r' => 'rock',
  's' => 'scissors',
  'p' => 'paper',
  'l' => 'lizard',
  'k' => 'spock'
}

WINNING_CHOICES = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'spock' => ['scissors', 'rock'],
  'lizard' => ['paper', 'spock']
}

def prompt(message)
  puts "=> #{message}"
end

def convert_shortcut(input)
  SHORTCUTS.fetch(input, '')
end

def valid_shortcut?(input)
  if input.length == 1
    shortcut_choice = SHORTCUTS.fetch(input, '')
    VALID_CHOICES.include?(shortcut_choice)
  end
end

def valid_choice?(input)
  VALID_CHOICES.include?(input)
end

def win?(first, second)
  WINNING_CHOICES.fetch(first).include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You win!")
  elsif win?(computer, player)
    prompt("Computer wins!")
  else
    prompt("It's a tie!")
  end
end

def display_score(player, computer)
  user_score = 0
  computer_score = 0
  if win?(player, computer)
    user_score += 1
  elsif win?(computer, player)
    computer_score += 1
  else
    puts "No points for anyone"
  end
  puts "Your score: #{user_score} Computer's score: #{computer_score}"
end

choice = ''

loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if choice.length == 1
      choice = convert_shortcut(choice)
    end

    if valid_choice?(choice) 
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}, computer chose #{computer_choice}")

  display_results(choice, computer_choice)
  display_score(choice, computer_choice)

  prompt("Do you want to play again? (y for yes)")
  answer = gets.chomp
  break unless answer.downcase == 'y'
  system('clear') || system('cls')
end