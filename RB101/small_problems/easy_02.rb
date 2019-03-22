# # Problem 1

# # Build a program that randomly generates and prints Teddy's age. 
# # To get the age you should generate a random number between 20 and 200

# puts "Teddy is #{rand(20..200)} years old!"

# # Further exploration

# puts "What is your name?"
# name = gets.chomp

# if name.empty?
#   name = "Teddy"
# end
  
# puts "#{name} is #{rand(20..200)} years old!"

# # Problem 2

# # Ask for length of room in meters
# # store as variable length
# # Ask for width of room in meters
# # store as variable width
# # length x width = result
# # result x 10.7639 to get result in feet
# # print result

# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_i.to_f
# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_i.to_f
# square_meters = length * width

# puts "The area of the room is #{square_meters} square meters (#{square_meters * 10.7639} square feet)."

# # Better solution

# SQMETERS_TO_SQFEET = 10.7639

# puts '==> Enter the length of the room in meters: '
# length = gets.to_f

# puts '==> Enter the width of the room in meters: '
# width = gets.to_f

# square_meters = (length * width).round(2)
# square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

# puts "The area of the room is #{square_meters} " + \
#      "square meters (#{square_feet} square feet)."


# # Problem 3

# # Ask user for bill amount
# # Store as variable bill
# # Ask user for tip percentage
# # Store as a variable percentage
# # bill * tip percentage / 100 = tip
# # tip + bill = total
# # print the results

# puts "==> What is the bill?"
# bill = gets.to_f
# puts "==> What is the tip percentage?"
# percentage = gets.to_f

# tip = (bill * (percentage / 100).round(2)
# total = (bill + tip).round(2)

# puts "The tip is $#{tip}"
# puts "The total is $#{total}"

# Problem 4

































