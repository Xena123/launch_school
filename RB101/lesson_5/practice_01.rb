# Problem 1

# Sort the array into descending numeric value
# Call map method on the array to iterate and transform
# Iterate through the array and call to_i on each element
# then call sort on the array with b <=> a in the block

arr = ['10', '11', '9', '7', '8']

arr.sort do |a,b|
  b.to_i <=> a.to_i
end

# Problem 2

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |book|
  book[:published]
end

# Problem 3

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

p arr1[2][1][3]
p arr2[1][:third][0]
p arr3[2][:third][0][0]
p hsh1['b'][1]
p hsh2[:third].key(0)

# Problem 4

arr1 = [1, [2, 3], 4]

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

hsh1 = {first: [1, 2, [3]]}

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

arr1[1][1] = 4
p arr1

arr2[2] = 4
p arr2

hsh1[:first][2] = [4]
p hsh1

p hsh2[['a']][:a][2] = 4
p hsh2

# Problem 5

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end

total_male_age # => 444

# Problem 6

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}."
end

# Problem 7

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

arr # => [4, [3, 8]]

# a doesnt change becuase arr[0] changed the arr and not a

# Problem 8

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = []

hsh.each do |order, array|
  array.select do |word|
    vowels << word.scan(/[aeoui]/)
  end
end

p vowels

# Launch school answer

vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end

# Problem 9

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
new_array = []

arr.map do |array|
  new_array << array.sort
end

p new_array

# Launch school answer

arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end
# => [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]

# Problem 10

collection = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# use map method to increment all the integers by 1
# need to return a new collection
# has to be identical in structure to the original

collection.map do |array_element|
  incremented_hash = {}
  array_element.map do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end

# Launch school answer

collection.map do |hsh|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end
# => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]

# Problem 11

# Use select or reject
# Return a new array identical in structure to original array
# Only containing integers that are multiples of 3 

# Select returns new array for which the block is true
# Multiples of 3: can use (integer / 3 == 0)?

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |element|
  element.select do |number|
    number % 3 == 0
  end
end

# Problem 12

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]


hsh = Hash[arr.map {|key, value| [key, value]}]

# Launch school answer

hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end
hsh

# Problem 13

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |sub_array|
  sub_array.select do |number|
    number.odd?
  end
end

# Problem 14

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.select do |key, value|
  fruit_descriptions = []
  value.select do |k, v|
    fruit_descriptions << value[:colors]
    fruit_descriptions << value[:size]
  end
  fruit_descriptions
end


# Launch school answer

hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

# Problem 15

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.map do |sub_array|
  new_array = []
  sub_array.select do |letter, array|
    array.select do |num|
      if num.even?
        new_array << {letter => [num]}
      end
    end
  end
  new_array
end

# Launch school answer

arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end
# => [{:e=>[8], :f=>[6, 10]}]






