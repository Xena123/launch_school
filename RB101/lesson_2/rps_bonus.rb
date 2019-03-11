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

user_score = 0
computer_score = 0

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
  else
    false
  end
end

def valid_choice?(input)
  VALID_CHOICES.include?(input)
end

def win?(first, second)
  WINNING_CHOICES.fetch(first).include?(second)
end

def player_won?(first, second)
  win?(first, second)
end

def computer_won?(first, second)
  win?(second, first)
end

def display_results(player, computer)
  if player_won?(player, computer)
    prompt("You win!")
  elsif computer_won?(player, computer)
    prompt("Computer wins!")
  else
    prompt("It's a tie!")
  end
end

def winning_round(player, computer)
  if player == 5
    prompt("You win this round!")
  elsif computer == 5
    prompt("Computer wins this round!")
  end
end

choice = ''

loop do
  loop do
    prompt("Welcome to #{VALID_CHOICES.join(', ')}")
    prompt("You will play against the computer")
    prompt("Each win will get you 1 point")
    prompt("First one to 5 points wins the round")
    prompt("Make your first choice")
    prompt("You can type the following for shortcut keys:")
    print "=>"
    SHORTCUTS.each do |key, value|
      print "'#{key}' for #{value}, "
    end
    puts "\n"
    choice = gets.chomp.downcase

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

  if player_won?(choice, computer_choice)
    user_score += 1
  elsif computer_won?(choice, computer_choice)
    computer_score += 1
  end

  display_results(choice, computer_choice)
  prompt("Your score: #{user_score} Computer score: #{computer_score}")

  if user_score == 5 || computer_score == 5
    winning_round(user_score, computer_score)
    user_score = 0
    computer_score = 0
  end

  prompt("Do you want to play again? ('y' for yes / anything else will exit)")
  answer = gets.chomp.downcase
  break unless answer == 'y'
  system('clear') || system('cls')
end
