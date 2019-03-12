# def fun_with_ids
#   a_outer = 42
#   b_outer = "forty two"
#   c_outer = [42]
#   d_outer = c_outer[0]

#   a_outer_id = a_outer.object_id
#   b_outer_id = b_outer.object_id
#   c_outer_id = c_outer.object_id
#   d_outer_id = d_outer.object_id

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block." # 85
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block." # 70236319382840
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block." # 70236319382820
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block." # 85
#   # a_outer is 42 with an id of: 85 before the block.
#   # b_outer is forty two with an id of: 70204243820120 before the block.
#   # c_outer is [42] with an id of: 70204243820100 before the block.
#   # d_outer is 42 with an id of: 85 before the block.

#   1.times do
#     a_outer_inner_id = a_outer.object_id
#     b_outer_inner_id = b_outer.object_id
#     c_outer_inner_id = c_outer.object_id
#     d_outer_inner_id = d_outer.object_id

#     puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block." # 85
#     puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block." # 70236319382840
#     puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block." # 70236319382820
#     puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block." # 85
#     # a_outer id was 85 before the block and is: 85 inside the block.
#     # b_outer id was 70204243820120 before the block and is: 70204243820120 inside the block.
#     # c_outer id was 70204243820100 before the block and is: 70204243820100 inside the block.
#     # d_outer id was 85 before the block and is: 85 inside the block.

#     a_outer = 22
#     b_outer = "thirty three"
#     c_outer = [44]
#     d_outer = c_outer[0]

#     puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after." # changed due to reassigment
#     puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after." # changed due to reassigment
#     puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after." # changed due to reassigment
#     puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after." # changed due to reassigment

#     # a_outer inside after reassignment is 22 with an id of: 85 before and: 45 after.
#     # b_outer inside after reassignment is thirty three with an id of: 70204243820120 before and: 70204243819320 after.
#     # c_outer inside after reassignment is [44] with an id of: 70204243820100 before and: 70204243819300 after.
#     # d_outer inside after reassignment is 44 with an id of: 85 before and: 89 after.

#     a_inner = a_outer
#     b_inner = b_outer
#     c_inner = c_outer
#     d_inner = c_inner[0]

#     a_inner_id = a_inner.object_id
#     b_inner_id = b_inner.object_id
#     c_inner_id = c_inner.object_id
#     d_inner_id = d_inner.object_id

#     puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
#     puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
#     puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
#     puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
#     # a_inner is 22 with an id of: 45 inside the block (compared to 45 for outer).
#     # b_inner is thirty three with an id of: 70204243819320 inside the block (compared to 70204243819320 for outer).
#     # c_inner is [44] with an id of: 70204243819300 inside the block (compared to 70204243819300 for outer).
#     # d_inner is 44 with an id of: 89 inside the block (compared to 89 for outer).
#   end

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block."
#   # a_outer is 22 with an id of: 85 BEFORE and: 45 AFTER the block.
#   # b_outer is thirty three with an id of: 70204243820120 BEFORE and: 70204243819320 AFTER the block.
#   # c_outer is [44] with an id of: 70204243820100 BEFORE and: 70204243819300 AFTER the block.
#   # d_outer is 44 with an id of: 85 BEFORE and: 89 AFTER the block.

#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." # error due to variable scope
#   puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." # error due to variable scope
#   puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." # error due to variable scope
#   puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." # error due to variable scope
# end

# Question 2

def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id
  c_outer_id = c_outer.object_id
  d_outer_id = d_outer.object_id

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."
  # a_outer is 42 with an id of: 85 before the block.
  # b_outer is forty two with an id of: 70119319286660 before the block.
  # c_outer is [42] with an id of: 70119319286600 before the block.
  # d_outer is 42 with an id of: 85 before the block.


  an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)


  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the method call."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the method call."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the method call."
  # a_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method call.
  # b_outer is forty two with an id of: 70119319286660 BEFORE and: 70119319286660 AFTER the method call.
  # c_outer is [42] with an id of: 70119319286600 BEFORE and: 70119319286600 AFTER the method call.
  # d_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method call.

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" # error due to variable scope
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" # error due to variable scope
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" # error due to variable scope
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" # error due to variable scope
end


def an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)
  a_outer_inner_id = a_outer.object_id
  b_outer_inner_id = b_outer.object_id
  c_outer_inner_id = c_outer.object_id
  d_outer_inner_id = d_outer.object_id

  puts "a_outer id was #{a_outer_id} before the method and is: #{a_outer.object_id} inside the method."
  puts "b_outer id was #{b_outer_id} before the method and is: #{b_outer.object_id} inside the method."
  puts "c_outer id was #{c_outer_id} before the method and is: #{c_outer.object_id} inside the method."
  puts "d_outer id was #{d_outer_id} before the method and is: #{d_outer.object_id} inside the method."
  # a_outer id was 85 before the method and is: 85 inside the method.
  # b_outer id was 70119319286660 before the method and is: 70119319286660 inside the method.
  # c_outer id was 70119319286600 before the method and is: 70119319286600 inside the method.
  # d_outer id was 85 before the method and is: 85 inside the method.

  a_outer = 22
  b_outer = "thirty three"
  c_outer = [44]
  d_outer = c_outer[0]

  puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
  puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
  puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
  puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."
  # a_outer inside after reassignment is 22 with an id of: 85 before and: 45 after.
  # b_outer inside after reassignment is thirty three with an id of: 70119319286660 before and: 70119319285400 after.
  # c_outer inside after reassignment is [44] with an id of: 70119319286600 before and: 70119319285380 after.
  # d_outer inside after reassignment is 44 with an id of: 85 before and: 89 after.

  a_inner = a_outer
  b_inner = b_outer
  c_inner = c_outer
  d_inner = c_inner[0]

  a_inner_id = a_inner.object_id
  b_inner_id = b_inner.object_id
  c_inner_id = c_inner.object_id
  d_inner_id = d_inner.object_id

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the method (compared to #{a_outer.object_id} for outer)."
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the method (compared to #{b_outer.object_id} for outer)."
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the method (compared to #{c_outer.object_id} for outer)."
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the method (compared to #{d_outer.object_id} for outer)."
  # a_inner is 22 with an id of: 45 inside the method (compared to 45 for outer).
  # b_inner is thirty three with an id of: 70119319285400 inside the method (compared to 70119319285400 for outer).
  # c_inner is [44] with an id of: 70119319285380 inside the method (compared to 70119319285380 for outer).
  # d_inner is 44 with an id of: 89 inside the method (compared to 89 for outer).
end

# Question 3

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Question 4

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Question 5

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

def color_valid(color)
  color == "blue" || color == "green"
end
