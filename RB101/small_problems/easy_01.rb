# # Problem 1

# counter = 0

# def repeat(str, num)
#   puts "#{str + "\n"}" * num
# end

# repeat("hello", 4)

# # Better solution

# def repeat(string, number)
#   number.times do
#     puts string
#   end
# end

# # Problem 2

# # Write a method
# # It needs to take one integer as an arg
# # It may be postive, negative or zero
# # Returns a boolean
# # True if odd

# def is_odd?(num)
#   number % 2 == 1
# end

# # Problem 3

# # Write a method that takes one positive integer
# # returns the a list of the digits in the number
# # splits the digits and add them to an array

# def digit_list(num)
#   digits = []
#   num.to_s.chars.map(&:to_i)
  
# end

# puts digit_list(12345)

# # Problem 4

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# # Write a method, takes an array
# # Iterate through the array
# # save the current element in the array
# # compare that element to each of the other elements in the array
# # if any of the other elements match the current element
# #   add 1 to a counter
# # add result to a hash
# # return the hash

# def count_occurrences(array)
#   occurrences = {}

#   array.each do |element|
#     occurrences[element] = array.count(element)
#   end

#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
#   occurrences
# end
# p count_occurrences(vehicles)

# # Problem 5

# # Write a method that takes a string
# # returns a new string with the words in reverse order

# string = 'Hello World'

# def reverse_sentence(string)
#   new_string = string.split.reverse.join(' ')
#   new_string 
# end

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# # Problem 6

# # Write a method that takes a string as an argument
# # and returns all 5 or more letter words reversed

# # Split the string into words
# # Iterate through the words
# # check to see if the word is more than 4 letter
# # if it is then call string.reverse on it
# # call join on the words to return back to string
# # return the string

# def reverse_words(string)
#   words = []

#   string.split.each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end

#   words.join(' ')
# end

# puts reverse_words('Professional') 
# puts reverse_words('Walk around the block') 

# # Problem 7

# def stringy(size)
#   numbers = []

#   size.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end

#   numbers.join
# end

# stringy(6)

# # Problem 8

# # Write a method that takes one argument, an array of integers
# # and returns an average of those numbers

# # Count the amount of elements in the array
# # Add all the numbers together
# # sum of numbers / amount of elements

# def average(arr)
#   sum = 0
#   divider = arr.count
#   arr.each do |number|
#     sum += number
#   end
#   sum / divider
# end

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# Problem 9

# numbers.reduce(:+)

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

p sum(93)



