# Question 3
advice = "Few things in life are as important as house training your pet dinosaur."

advice.sub! 'important', 'urgent'
puts advice

# Question 5
(10..100).cover?(42)

# Question 6
famous_words = "seven years ago..."
"four score and " + famous_words
famous_words.insert(0, "four score and ")

# Question 8
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc("Barney")

