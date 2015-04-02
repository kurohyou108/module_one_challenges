# #Assignment:
#
# 1 : Age Ordering

data = [['Frank', 33], ['Stacy', 15], ['Juan', 24], ['Dom', 32], ['Steve', 24], ['Jill', 24]]

# Level 1 : Write code that'll output the names (and only the names) in order by ascending age
# ages = data.sort_by! { |name, age| age}
#
# ages.each do |name|
#   puts name[0]
# end

# Level 2: Output the name with the age, like Juan (24)

# ages.each do |name|
#   puts "#{name[0]} (#{name[1]})"
# end

# Level 3: If there are multiple people tied with the same age, put them in alphabetical order

names = data.sort_by { |name, age| age}
names.reverse!

# ages3 = names.sort_by { |name, age| name}

names.each do |name|
  puts "#{name[0]} (#{name[1]})"
end

# Level 4: Write code to automatically build a hash with the age as the key and an array of names as the value (all the people who are that age). e.g. {24 => [' Juan ', ' Steve ', ' Jill ']...}



