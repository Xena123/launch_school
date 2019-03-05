require 'yaml'
MESSAGES = YAML.load_file('mort_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_amount?(input)
  # if input is a neg number or empty the method will return true
  input.to_i <= 0 || input.empty?
end

def valid_duration?(input)
  # if input is a float or empty or 0 the method will return false
  input.to_i.to_s == input && !input.empty? && input.to_i != 0
end

prompt(MESSAGES['welcome'])

name = ''
loan_amount = ''
apr = ''
loan_duration = ''

loop do
  name = gets.chomp
  if name.strip.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt(format(MESSAGES['greeting'], name: name))

loop do
  loop do
    prompt(MESSAGES['loan_amount'])
    # Delete commas and spaces from input
    loan_amount = gets.chomp.gsub(/[\s,]/, "")
    # if true - prompt user for another number
    if valid_amount?(loan_amount)
      prompt(MESSAGES['not_number'])
    # otherwise break out of the loop
    else
      break
    end
  end

  loop do
    prompt(MESSAGES['apr'])
    apr = gets.chomp
    # if true - prompt user for another number
    if valid_amount?(apr)
      prompt(MESSAGES['not_number'])
    # otherwise break out of the loop
    else
      break
    end
  end

  loop do
    prompt(MESSAGES['loan_dur'])
    loan_duration = gets.chomp
    # if true - break out of the loop
    if valid_duration?(loan_duration)
      break
    # otherwise ask for a valid number
    else
      prompt(MESSAGES['not_duration'])
    end
  end

  prompt(MESSAGES['operation'])

  loan_amount = loan_amount.to_i
  loan_dur_months = loan_duration.to_f * 12
  monthly_int = apr.to_f / 100 / 12

  result = loan_amount * (monthly_int / (1 - (1 + monthly_int)**(-loan_dur_months)))
  result = result.round(2)

  sleep(3)

  prompt(format(MESSAGES['result'], result: result))
  prompt(MESSAGES['another_calc'])
  answer = gets.chomp.downcase
  if answer == 'y'
    system('clear') || system('cls')
  else
    break
  end
end
