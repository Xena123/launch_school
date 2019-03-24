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

# # Problem 8

# # Write a method that takes a string as an argument
# # if the string is a palindrome it returns true
# #   if not it returns false

# def palindrome?(str)
#   if str == str.reverse
#     true
#   end
# end

# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true

# # Problem 9

# # Write a method using above method
# # Needs to strip out commas and apostophes
# # And call downcase on the string

# def real_palindrome?(str)
#   str = str.downcase.gsub(/[.,']/, '').delete(' ')
#   palindrome?(str)
# end

# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false

# # Launch school answer

# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
#   palindrome?(string)
# end


# # Problem 10

# def palindromic_number?(integer)
#   str = integer.to_s
#   if str == str.reverse
#     true
#   end
# end

# p palindromic_number?(34543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(5) == true

mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]

counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  full_name = mailing_campaign_leads[counter][:name]
  names = full_name.split

  names_counter = 0
  loop do
    break if names_counter == names.size
    name = names[names_counter]
    names[names_counter] = name.capitalize

    names_counter += 1
  end

  capitalized_full_name = names.join(' ')
  mailing_campaign_leads[counter][:name] = capitalized_full_name

  counter += 1
end

usable_leads = []
counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  last_login = mailing_campaign_leads[counter][:days_since_login]
  subscribed_to_list = mailing_campaign_leads[counter][:mailing_list]

  if last_login < 60 && subscribed_to_list
    usable_leads << mailing_campaign_leads[counter]
  end

  counter += 1
end

p mailing_campaign_leads
p usable_leads
