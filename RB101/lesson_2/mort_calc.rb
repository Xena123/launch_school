require 'yaml'
MESSAGES = YAML.load_file('mort_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  !!Float(num) rescue false
end

def number?(num)
  integer?(num) || float?(num)
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
    loan_amount = gets.chomp.gsub(/[\s,]/ ,"")
    if number?(loan_amount)
      break
    else
      prompt(MESSAGES['not_number'])
    end
  end

  loop do
    prompt(MESSAGES['apr'])
    apr = gets.chomp.gsub(/[^0-9,.]/, "")
    p apr
    if number?(apr)
      break
    else
      prompt(MESSAGES['not_number'])
    end
  end

  loop do
    prompt(MESSAGES['loan_dur'])
    loan_duration = gets.chomp
    if number?(loan_duration)
      if loan_duration.to_i <= 40
        break
      else
        prompt("Please enter a loan duration less than 40 years")
      end
    else
      prompt(MESSAGES['not_number'])
    end
  end

  prompt(MESSAGES['operation'])

  loan_amount = loan_amount.to_i
  loan_dur_months = loan_duration.to_i * 12
  monthly_int = apr.to_f / 100 / 12

  result = loan_amount * (monthly_int / (1 - (1 + monthly_int)**(-loan_dur_months)))
  result = result.round(2)
  
  sleep(3)

  prompt(format(MESSAGES['result'], result: result))
  prompt(MESSAGES['another_calc'])
  answer = gets.chomp
  if answer == 'y'
    system('clear') || system('cls')
  end
  break unless answer == 'y'
end
