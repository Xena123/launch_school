# # Problem 1

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# flintstones_hash = {}

# flintstones.each_with_index { |item, index|  
#   flintstones_hash[item] = index
# }
# p flintstones_hash

# # Problem 2

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# numbers = ages.values
# p numbers.reduce(:+)

# # Alternative answer using each instead of a fancy method

# total_ages = 0
# ages.each { |_,age| total_ages += age }
# p total_ages # => 6174

# # Problem 3

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# new_ages = {}

# ages.each do |key, value|
#   if value < 100
#     new_ages[key] = value
#   end
# end
# p new_ages

# # Alternative answer

# ages.keep_if { |_, age| age < 100 }

# Problem 4

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p ages.min

# ages.values.min

# Problem 5

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.each_with_index do |name, index|
#   if name.start_with?("Be")
#     p index
#   end
# end

# # Alernative answer

# flintstones.index { |name| name[0, 2] == "Be" }

# Problem 6

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# new_names = []

# flintstones.each do |name|
#   new_names << name[0..2] # name[0,3]
# end

# p new_names

# # Alernative answer

# flintstones.map! { |name| name[0,3] }

# Problem 7

statement = "The Flintstones Rock"

{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

