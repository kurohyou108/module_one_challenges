# #Assignment:
#
# 1 : Age Ordering

data = [['Frank', 33], ['Stacy', 15], ['Juan', 24], ['Dom', 32], ['Steve', 24], ['Jill', 24]]

# Level 1 : Write code that'll output the names (and only the names) in order by ascending age
puts "****Level 1****"
ages = data.sort_by! { |name, age| age}

ages.each do |name|
  puts name[0]
end

# Level 2: Output the name with the age, like Juan (24)
puts "****Level 2****"
ages.each do |name|
  puts "#{name.first} (#{name.last})"
end

# Level 3: If there are multiple people tied with the same age, put them in alphabetical order
puts "****Level 3****"
names = data.sort_by! { |name, age| [age, name]} #sorts by age and then in alphabetical order in same method

names.each do |name, age|
  puts "#{name} (#{age})"
end

# Level 4: Write code to automatically build a hash with the age as the key and an array of names as the value (all the people who are that age). e.g. {24 => [' Juan ', ' Steve ', ' Jill ']...}
puts "****Level 4****"

#Ricky Solution
hash_by_age = {}

data.each do |person, age|
  if hash_by_age[age].nil?
    hash_by_age[age] = [person]
  else
    hash_by_age[age] << person
  end
end

puts hash_by_age
#Review

#Level 1
#Erik Solution
  data.each do |i|
    i.reverse!
  end


