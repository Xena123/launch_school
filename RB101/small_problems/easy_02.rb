# Problem 1

# Build a program that randomly generates and prints Teddy's age. 
# To get the age you should generate a random number between 20 and 200

puts "Teddy is #{rand(20..200)} years old!"

# Further exploration

puts "What is your name?"
name = gets.chomp

if name.empty?
  name = "Teddy"
end
  
puts "#{name} is #{rand(20..200)} years old!"

# Problem 2

# Ask for length of room in meters
# store as variable length
# Ask for width of room in meters
# store as variable width
# length x width = result
# result x 10.7639 to get result in feet
# print result

puts "Enter the length of the room in meters:"
length = gets.chomp.to_i.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_i.to_f
square_meters = length * width

puts "The area of the room is #{square_meters} square meters (#{square_meters * 10.7639} square feet)."

# Better solution

SQMETERS_TO_SQFEET = 10.7639

puts '==> Enter the length of the room in meters: '
length = gets.to_f

puts '==> Enter the width of the room in meters: '
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
     "square meters (#{square_feet} square feet)."


# Problem 3

# Ask user for bill amount
# Store as variable bill
# Ask user for tip percentage
# Store as a variable percentage
# bill * tip percentage / 100 = tip
# tip + bill = total
# print the results

puts "==> What is the bill?"
bill = gets.to_f
puts "==> What is the tip percentage?"
percentage = gets.to_f

tip = (bill * (percentage / 100).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"

# Problem 4

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

current_year = Time.new.year
years_to_retirement = retirement_age - age
retirement_year = current_year + years_to_retirement

puts "Its #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_to_retirement} to go!"

# Problem 5

# get users name
# store it in a variable
# check if last character is a !
# if it isnt 
#   greet user with name
# if it is 
#   greet user and ask why they are shouting in caps

puts "What is your name?"
name = gets.chomp

if name.end_with?('!')
  name = name.chop.upcase
  puts "HELLO #{name}. WHY ARE YOU SHOUTING AT ME?"
else
  puts "Hello #{name}."
end

# Launch school answer

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

# Problem 6

# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# find all the odd numbers in the range from 1 to 99
# print if odd

(1..99).to_a.each do |num|
  if num.odd?
    puts num
  end
end

# Problem 7

(1..99).to_a.each do |num|
  if num.even?
    puts num
  end
end

# Problem 8

# Ask user for an integer greater than 0
# save number in a variable number
# use number to get a range from 1 to the number given
# convert into an array
# ask the user if they want to compute the sum or the product
# if 's'
#   add all the items in the array together (reduce?)
# if 'p'
#   multiply all the numbers in the array together 
# print the result

puts ">> Please enter an integer greater than 0:"
number = gets.to_i
range = (1..number).to_a
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
user_input = gets.chomp

if user_input == 's'
  sum = range.reduce(:+)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif
  product = range.reduce(:*)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Wrong input"
end

# Launch school answer

def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end






