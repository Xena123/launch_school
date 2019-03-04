require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

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

def operation_to_message(op)
  message = case op
            when '1'
              'Adding'
            when '2'
              'Subtracting'
            when '3'
              'Multiplying'
            when '4'
              'Dividing'
            end
  message
end

prompt(MESSAGES['welcome'])

first_number = ''
second_number = ''
name = ''
operator = ''

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
    prompt(MESSAGES['first_number'])
    first_number = gets.chomp

    if number?(first_number)
      break
    else
      prompt(MESSAGES['not_number'])
    end
  end

  loop do
    prompt(MESSAGES['second_number'])
    second_number = gets.chomp

    if number?(second_number)
      break
    else
      prompt(MESSAGES['not_number'])
    end
  end

  prompt(MESSAGES['operation'])

  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['please_choose'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             first_number.to_f + second_number.to_f
           when '2'
             first_number.to_f - second_number.to_f
           when '3'
             first_number.to_f * second_number.to_f
           when '4'
             first_number.to_f / second_number.to_f
           end

  prompt(format(MESSAGES['result'], result: result))
  prompt(MESSAGES['another_calc'])
  answer = gets.chomp
  if answer == 'y'
    system('clear') || system('cls')
  end
  break unless answer == 'y'
end
