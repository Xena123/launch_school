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

def is_odd?(num)
  number % 2 == 1
end

