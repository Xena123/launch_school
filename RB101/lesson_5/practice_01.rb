# # Problem 1

# # Sort the array into descending numeric value
# # Call map method on the array to iterate and transform
# # Iterate through the array and call to_i on each element
# # then call sort on the array with b <=> a in the block

# arr = ['10', '11', '9', '7', '8']

# arr.sort do |a,b|
#   b.to_i <=> a.to_i
# end

# # Problem 2

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# books.sort_by do |book|
#   book[:published]
# end

# # Problem 3

# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

# p arr1[2][1][3]
# p arr2[1][:third][0]
# p arr3[2][:third][0][0]
# p hsh1['b'][1]
# p hsh2[:third].key(0)

# # Problem 4

# arr1 = [1, [2, 3], 4]

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

# hsh1 = {first: [1, 2, [3]]}

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

# arr1[1][1] = 4
# p arr1

# arr2[2] = 4
# p arr2

# hsh1[:first][2] = [4]
# p hsh1

# p hsh2[['a']][:a][2] = 4
# p hsh2

# # Problem 5

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# total_male_age = 0
# munsters.each_value do |details|
#   total_male_age += details["age"] if details["gender"] == "male"
# end

# total_male_age # => 444

# # Problem 6

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, details|
#   puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}."
# end

# # Problem 7

# a = 2
# b = [5, 8]
# arr = [a, b]

# arr[0] += 2
# arr[1][0] -= a

# arr # => [4, [3, 8]]

# # a doesnt change becuase arr[0] changed the arr and not a

# # Problem 8

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# vowels = []

# hsh.each do |order, array|
#   array.select do |word|
#     vowels << word.scan(/[aeoui]/)
#   end
# end

# p vowels

# # Launch school answer

# vowels = 'aeiou'

# hsh.each do |_, value|
#   value.each do |str|
#     str.chars.each do |char|
#       puts char if vowels.include?(char)
#     end
#   end
# end

# # Problem 9

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
# new_array = []

# arr.map do |array|
#   new_array << array.sort
# end

# p new_array

# # Launch school answer

# arr.map do |sub_arr|
#   sub_arr.sort do |a, b|
#     b <=> a
#   end
# end
# # => [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]

# Problem 10

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]








