# Build a command line calculator that does the following:

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(input)
  input.to_i.to_s == input
end

def operation_to_message(op)
  case op
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

# 1. asks for 2 numbers
prompt("Welcome to calculator, what is your name?")

first_number = ''
second_number = ''
name = ''
operator = ''

loop do
  name = gets.chomp
  if name.empty?
    prompt("Make sure to use a valid name")
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  loop do
    prompt("Please input a number")
    first_number = gets.chomp.to_i

    if valid_number?(first_number)
      break
    else
      prompt("That doesnt look like a valid number")
    end
  end

  loop do
    prompt("Please input another number")
    second_number = gets.chomp.to_i

    if valid_number?(second_number)
      break
    else
      prompt("That doesnt look like a valid number")
    end
  end

  # 2. asks for the type of operation to perform: add, subtract, multiply or divide
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  MSG
  prompt(operator_prompt)

  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Please choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             first_number.to_i + second_number.to_i
           when '2'
             first_number.to_i - second_number.to_i
           when '3'
             first_number.to_i * second_number.to_i
           when '4'
             first_number.to_f / second_number.to_f
           end

  # 3. displays the result
  prompt("The result is #{result}")
  prompt("Do you want to perform another calculation?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
