# # Problem 1

# numbers = []

# puts "Enter the 1st number:"
# numbers << gets.chomp.to_i
# puts "Enter the 2nd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 3rd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 4th number:"
# numbers << gets.chomp.to_i
# puts "Enter the 5th number:"
# numbers << gets.chomp.to_i
# puts "Enter the last number:"
# last_number = gets.chomp.to_i

# if numbers.include?(last_number)
#   puts "The number #{last_number} appears in #{numbers}."
# else
#   puts "The number #{last_number} does not appear in #{numbers}."
# end

# # Problem 2

# # Ask user for first number
# # store in a variable: first_number
# # Ask user for second number
# # store in a variable: second_number
# # perform sums and print results

# puts "==> Enter the first number:"
# first_number = gets.to_i
# puts "==> Enter the second number:"
# second_number = gets.to_i

# sum = first_number + second_number
# leftover = first_number - second_number
# product = first_number * second_number
# division = first_number / second_number
# remainder = first_number % second_number
# power = first_number ** second_number

# puts "==> #{first_number} + #{second_number} = #{sum}"
# puts "==> #{first_number} - #{second_number} = #{leftover}"
# puts "==> #{first_number} * #{second_number} = #{product}"
# puts "==> #{first_number} / #{second_number} = #{division}"
# puts "==> #{first_number} % #{second_number} = #{remainder}"
# puts "==> #{first_number} ** #{second_number} = #{power}"

# # Launch school answer

# def prompt(message)
#   puts "==> #{message}"
# end

# prompt("Enter the first number:")
# first_number = gets.chomp.to_i
# prompt("Enter the second number:")
# second_number = gets.chomp.to_i

# prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
# prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
# prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
# prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
# prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
# prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")

# # Problem 3

# # Ask user for an input of a word or multiple words
# # store as a variable (words)
# # delete spaces from string
# # store as a seperate variable (no_spaces)
# # count characters in no_spaces
# # print result

# puts "Please write word or multiple words:"
# words = gets.chomp

# no_spaces = words.delete(" ")
# characters = no_spaces.size

# puts "There are #{characters} characters in '#{words}'."   #\"#{input}\"."

# # Problem 4

# def multiply(num1, num2)
#   num1 * num2
# end

# multiply(5, 3) == 15

# # Problem 5

# def square(num)
#   num * num
# end

# p square(5) == 25

# # Correct solution

# def square(n)
#   multiply(n, n)
# end

# # Problem 6

# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if value2 && !value1
#   false
# end

# # Shorter version

# def xor?(value1, value2)
#   (value1 && !value2) || (value2 && !value1)
# end

# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false

# # Problem 7

# # write a method which takes an array as an argument
# # iterate though the array
# # if the index is even then add the element to a new array
# #   return the new array


# def oddities(arr)
#   counter = 0
#   new_arr = []

#   loop do
#     break if counter == arr.size
#     if counter.even?
#       new_arr << arr[counter]
#     end
#     counter += 1
#   end
#   new_arr
# end

# p oddities([2, 3, 4, 5, 6]) 

# # Launch school answer

# def oddities(array)
#   odd_elements = []
#   index = 0
#   while index < array.size
#     odd_elements << array[index]
#     index += 2
#   end
#   odd_elements
# end



















