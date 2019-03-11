# Question 1
10.times { puts "\tThe Flintstones Rock!"}
10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# Question 2
# Cant concatanate a string and number
puts "the value of 40 + 2 is " + "#{40 + 2}"

# Question 3
def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

puts factors(0)

# What is the purpose of the number % divisor == 0 ?
# If the remainder of dividing the 2 numbers is 0 then that number is a factor
# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# It is returning the array

# Question 4

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# The first one mutates the buffer argument
# The secone one reassigns the element to the buffer variable, it does not mutate

# Question 5

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

