# Problem 1

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}

flintstones.each_with_index { |item, index|  
  flintstones_hash[item] = index
}
p flintstones_hash

# Problem 2

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

numbers = ages.values
p numbers.reduce(:+)

# Alternative answer using each instead of a fancy method

total_ages = 0
ages.each { |_,age| total_ages += age }
p total_ages # => 6174

# Problem 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
new_ages = {}

ages.each do |key, value|
  if value < 100
    new_ages[key] = value
  end
end
p new_ages

# Alternative answer

ages.keep_if { |_, age| age < 100 }

Problem 4

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
p ages.min

ages.values.min

Problem 5

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, index|
  if name.start_with?("Be")
    p index
  end
end

# Alernative answer

flintstones.index { |name| name[0, 2] == "Be" }

Problem 6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
new_names = []

flintstones.each do |name|
  new_names << name[0..2] # name[0,3]
end

p new_names

# Alernative answer

flintstones.map! { |name| name[0,3] }

# Problem 7

statement = "The Flintstones Rock"

#{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

statement = statement.delete " "
p statement
letter_count = {}
counter = 0

loop do
  current_value = statement.count "#{statement[counter]}"
  current_key = statement[counter]
  letter_count[current_key] = current_value
  counter += 1
  break if counter == statement.size
end

p letter_count

# Correct solution

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
p letters
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
p result

# Problem 8

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
  p numbers
end

# 1
# 3

The each method is using the updated numbers array to iterate over so even though it has deleted the item at index 0 it still will continue onto index 1 of the numbers array (which is now [2,3,4]) so it skips 2 and iterates over 3. Then stops because the array now only has 2 items ([2,4]) in it and it believes it needs to continue to index 2 of the array which doesnt exist now.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# 1
# 2

# Problem 9

words = "the flintstones rock"

# split = string split into words and added to an array
words.split.map { |word| word.capitalize }.join(' ')

# Problem 10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# iterate over the age values
# if age is between 0 - 17 add age_group => kid
# elsif age is between 18 - 64 add age_group => adult
# else add age_group => senior

munsters.each do |key, value|
  current_key = key
  if (1..17) === value["age"]
    munsters[current_key]["age_group"] = "kid"
  elsif (18..64) === value["age"]
    munsters[current_key]["age_group"] = "adult"
  else
    munsters[current_key]["age_group"] = "senior"
  end
end
p munsters

# { "Herman"=>{"age"=>32, "gender"=>"male", "age_group"=>"adult"},
#  "Lily"=>{"age"=>30, "gender"=>"female", "age_group"=>"adult"},
#   "Grandpa"=>{"age"=>402, "gender"=>"male", "age_group"=>"senior"},
#   "Eddie"=>{"age"=>10, "gender"=>"male", "age_group"=>"kid"},
#   "Marilyn"=>{"age"=>23, "gender"=>"female", "age_group"=>"adult"} }

# Better solution
munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end
