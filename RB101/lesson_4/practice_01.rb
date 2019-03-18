# loop do
#   puts 'Just keep printing...'
#   break
# end

# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end
#   break
# end

# puts 'This is outside all loops.'

# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   break if iterations == 6
# end

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == 'yes'
# end

# say_hello = true
# count = 0

# while say_hello
#   puts 'Hello!'
#   count += 1
#   say_hello = false if count == 5
# end

# numbers = []

# while numbers.size < 5
#   randon_number = rand(99)
#   numbers.push(randon_number)
# end

# puts numbers

# count = 1

# until count > 10
#   puts count
#   count += 1
# end

# numbers = [7, 9, 13, 25, 18]
# count = 0

# until count == numbers.size do
#    puts numbers[count]
#    count += 1
# end

# for i in 1..100
#   puts i if i.odd?
# end

# # My answer
# friends = ['Sarah', 'John', 'Hannah', 'Dave']

# iterations = 0

# loop do
#   puts "Hello #{friends[iterations]}"
#   iterations += 1
#   break if iterations == friends.size
# end

# # Better answer
# friends = ['Sarah', 'John', 'Hannah', 'Dave']

# for friend in friends
#   puts "Hello, #{friend}!"
# end

