scores = {
    "A" => 1, "B" => 3, "C" => 3, "D" => 2,
    "E" => 1, "F" => 4, "G" => 2, "H" => 4,
    "I" => 1, "J" => 8, "K" => 5, "L" => 1,
    "M" => 3, "N" => 1, "O" => 1, "P" => 3,
    "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
    "U" => 1, "V" => 4, "W" => 4, "X" => 8,
    "Y" => 4, "Z" => 10
}

#Level 1: Scoring Letters in an Array
word = ["H", "E", "L", "L", "O"]

total_score = word.each do |letter|
  letters = scores.fetch(letter)
  puts "#{letter} has the value #{letters}"
end

#Level 2: Scoring Letters in a String
word_2 = "hello"

word_scoring_2 = word_2.upcase.chars
total_scoring = word_scoring_2.each do |letter|
  letters = scores.fetch(letter)
  puts "#{letter} has the value #{letters}"
end

#Level 3 Scoring an Entire String
word_3 = "hello"
score_3 = 0

word_scoring_3 = word_2.upcase.chars
total_scoring = word_scoring_3.each do |letter|
  letters = scores.fetch(letter)
  score_3 += letters
end

puts "Total Score for #{word_3} is #{score_3}"