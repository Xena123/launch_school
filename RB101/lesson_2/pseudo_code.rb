def find_greatest(numbers)
  saved_number = nil

  numbers.each do |num|
    saved_number ||= num  # assign to first value
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end

collection = [30,100,77,8000,9,10,20]

puts find_greatest(collection)


# 1. a method that returns the sum of two integers

Create method with 2 arguments
Add 2 arguments together in the method
End the method
Call the method with 2 integers
print the result

# 2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

Create a method with one argument which needs to be an array
Split the array into its individual elements
Convert to strings?
Concatenate all the individual elements into one string
Display the result

# 3. a method that takes an array of integers, and returns a new array with every other element

Create a method with one argument which needs to be an array
Set a variable for a new empty array
Iterate through the argument array
and set every second integer to the new array




