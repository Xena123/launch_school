# # Problem 1

# # Write a method that takes two strings as arguments.
# # Determines the longest of the two strings, 
# # Returns the result of concatenating the shorter string, the longer string, and the shorter string once again.
# # You may assume that the strings are of different lengths.

# # compare 2 string lengths using .length
# # if first is longer than second
# #   second + first + second
# # else
# #   first + second + first
# # end

# def short_long_short(string1, string2)
#   if string1.length > string2.length
#     string2 + string1 + string2
#   else
#     string1 + string2 + string1
#   end
# end

# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"

# # Problem 2

# # Write a method that takes a year as input and returns the century. 
# # The return value should be a string that begins with the century number, 
# # and ends with st, nd, rd, or th as appropriate for that number.

# # New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end

# # Problem 3

# # write a method that returns a boolean
# # takes an integer argument which is greater and 0
# # returns true if its a leap year
# # false if not
# # leap year if divisible by 4 
# # but not divisible by 100


# def leap_year?(year)
#   unless year % 100 == 0 && year % 400 != 0
#     year % 4 == 0
#   end
# end

# p leap_year?(2016)
# p leap_year?(2015)
# p leap_year?(2100)
# p leap_year?(2400)
# p leap_year?(240000)
# p leap_year?(240001)
# p leap_year?(2000)
# p leap_year?(1900)
# p leap_year?(1752)
# p leap_year?(1700)
# p leap_year?(1)
# p leap_year?(100)
# p leap_year?(400)

# # Launch school answer

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end

# def leap_year?(year)
#   (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
# end

# # Problem 4

# def leap_year?(year)
#   if year < 1752
#     if year % 400 == 0
#       true
#     elsif year % 100 == 0
#       false
#     else
#       year % 4 == 0
#     end
#   else
#     year % 4 == 0
#   end
# end

# # Problem 5

# # multisum(3) == 3
# # multisum(5) == 8
# # multisum(10) == 33
# # multisum(1000) == 234168

# # write a method that takes one argument which needs to be an integer
# # use the argument as the top of a range of numbers from 1..number
# # iterate through the range and add all numbers that are divisible by either 3 or 5 to a new array
# # add all the integers in the array and output the result

# def multisum(number)
#   products = []
#   (1..number).select do |int|
#     if int % 3 == 0
#       products << int
#     elsif int % 5 == 0
#       products << int
#     end
#   end
#   products.inject(:+)
# end


# p multisum(5)
# p multisum(10)
# p multisum(1000)

# # Launch school answer

# def multiple?(number, divisor)
#   number % divisor == 0
# end

# def multisum(max_value)
#   sum = 0
#   1.upto(max_value) do |number|
#     if multiple?(number, 3) || multiple?(number, 5)
#       sum += number
#     end
#   end
#   sum
# end

# # Problem 6

# # Write a method that takes an array as an argument
# # And returns an array with the elements as the running total of the array given

# # Iterate through the array using a loop
# # counter = 0
# # using counter as the index
# # first number will equal the first number
# # second number will equal the first plus second number

# def running_total(array)
#   sum = 0
#   array.map do |value|
#     sum = sum + value
#     p sum
#   end
# end

# running_total([2, 5, 13])

# # Problem 7

# # Convert string to number

# def string_to_integer(str)
#   str.split(//).map do |chr| 
#     case chr
#     when '0' then 0
#     when '1' then 1
#     when '2' then 2
#     when '3' then 3
#     when '4' then 4
#     when '5' then 5
#     when '6' then 6
#     when '7' then 7
#     when '8' then 8
#     when '9' then 9
#     end
#   end
# end

# # p string_to_integer('4321')

# # Launch school answer

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = string.chars.map do |char| 
#     DIGITS[char]
#   end

#   value = 0
#   digits.each do |digit| 
#     value = 10 * value + digit 
#   end
#   value
# end

# Problem 8

# def string_to_signed_integer(string)
#   if string[0] == '-'
#     string[0] = ''
#     number = string_to_integer(string)
#     number = number - number - number
#   elsif string[0] == '+'
#     string[0] = ''
#     string_to_integer(string)
#   else
#     string_to_integer(string)
#   end
# end

# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100


# # Launch school answer

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

# # Problem 9

# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end

# integer_to_string(4321)

