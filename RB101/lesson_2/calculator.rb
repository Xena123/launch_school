# Build a command line calculator that does the following:


# 1. asks for 2 numbers
Kernel.puts("Please input a number")
first_number = Kernel.gets().chomp().to_i()
Kernel.puts("Please input another number")
second_number = Kernel.gets().chomp().to_i()


# 2. asks for the type of operation to perform: add, subtract, multiply or divide
Kernel.puts("Please give me an operator 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()
result = 0

if operator == '1'
  result = first_number.to_i() + second_number.to_i()
elsif operator == '2'
  result = first_number.to_i() - second_number.to_i()
elsif operator == '3'
  result = first_number.to_i() * second_number.to_i()
elsif operator == '4'
  result = first_number.to_f() / second_number.to_f()
else 
  Kernel.puts("That is not a valid option")
end

# 3. displays the result
Kernel.puts("The result is #{result}")