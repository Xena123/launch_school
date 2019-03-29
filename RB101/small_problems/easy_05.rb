# # Problem 1

# # Write a method that determines and returns the ASCII string value of a string that is passed in as an argument
# # The ASCII string value is the sum of the ASCII values of every character in the string. 
# # (You may use String#ord to determine the ASCII value of a character.)

# # Write a method that takes a string as an argument


# ASCII = {
#   'A' => 65, 'B' => 66, 'C' => 67, 'D' => 68, 'E' => 69,
#   'F' => 70, 'G' => 71, 'H' => 72, 'I' => 73, 'J' => 74
# }

# def string_to_ascii(string)
#   digits = string.chars.map do |char| 
#     ASCII[char]
#   end
#   digits.inject(:+)
#   # value = 0
#   # digits.each do |digit| 
#   #   value = 10 * value + digit 
#   # end
#   # value
# end

# p string_to_ascii('ABCDE')

# # Launch school answer

# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end

# p ascii_value('Four score') 

# Problem 2

# Write a method that takes an integer
# Needs to convert it to the time of day before or after midnight
# postive is after midnight
# negative is before midnight

# number divided by 60
# remainder converted into minutes
# (.33 * 100 / 60) * 100 = minutes

# The Integer divmod method and the % (modulus) operator may prove useful in your solution. 
# You may also find Kernel format handy for formatting your results.

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR # 1440

def time_of_day(time)
  time_in_hours = (MINUTES_PER_DAY + time.to_f) / 60
  time_in_hours = time_in_hours.round(2)
  remainder_minutes = time_in_hours % 1
  remainder_minutes = remainder_minutes.round(2)
  converted_minutes = remainder_minutes * 60
  hours = time_in_hours.to_i
  format('%02d:%02d', hours, converted_minutes)
end

# Launch school answer

def time_of_day(delta_minutes)
  delta_minutes = 35 % 1440
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

time_of_day(35)

