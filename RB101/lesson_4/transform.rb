# # Transformation and Selection

# alphabet = 'the goods in the goody bag were very good'
# selected_chars = []
# counter = 0

# loop do
#   current_char = alphabet[counter]

#   if current_char == 'g'
#     selected_chars << current_char    # appends current_char into the selected_chars string
#   end

#   counter += 1
#   break if counter == alphabet.size
# end

# p selected_chars


# fruits = ['apple', 'banana', 'pear']
# transformed_elements = []
# counter = 0

# loop do
#   current_element = fruits[counter]

#   transformed_elements << current_element + 's'   # appends transformed string into array

#   counter += 1
#   break if counter == fruits.size
# end

# p fruits

# p transformed_elements # => ["apples", "bananas", "pears"]


# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(hash)
#   hash_keys = hash.keys
#   counter = 0
#   new_hash = {}
#   loop do
#     break if counter == hash_keys.size
#     current_key = hash_keys[counter]
#     current_value = hash[current_key]

#     if current_value == 'Fruit'
#       new_hash[current_key] = current_value
#     end
#     counter += 1
#   end
#   new_hash
# end

# p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}



# number_of_pets = {
#   'dogs' => 2,
#   'cats' => 4,
#   'fish' => 1
# }
# pets = number_of_pets.keys # => ['dogs', 'cats', 'fish']
# counter = 0

# loop do
#   break if counter == number_of_pets.size
#   current_pet = pets[counter]
#   current_pet_number = number_of_pets[current_pet]
#   puts "I have #{current_pet_number} #{current_pet}!"
#   counter += 1
# end

# def double_numbers(numbers)
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     numbers[counter] =* 2

#     counter += 1
#   end

#   numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# p double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]

# def double_odd_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     current_number *= 2 if counter.odd?
#     doubled_numbers << current_number

#     counter += 1
#   end

#   doubled_numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# p double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# def multiply(numbers, multiplier)
#   multiplied_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     multiplied_numbers << numbers[counter] * multiplier

#     counter += 1
#   end

#   multiplied_numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# p multiply(my_numbers, 3) # => [2, 8, 6, 14, 4, 12]

# def select_letter(str, letter)
# selected_chars = ''
# counter = 0

#   loop do
#     current_char = str[counter]

#     if current_char == letter
#       selected_chars << current_char    # appends current_char into the selected_chars string
#     end

#     counter += 1
#     break if counter == str.size
#   end

#   selected_chars # => "g"
# end


# question = 'How many times does a particular character appear in this sentence?'
# p select_letter(question, 'a') # => "aaaaaaaa"
# p select_letter(question, 't') # => "ttttt"
# p select_letter(question, 'z') # => ""
