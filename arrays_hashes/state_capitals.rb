#assignment

states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}

capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}

# Level 1 : Write some code which given a state name ("Oregon") outputs its capital ("Salem")
# Level 2 : Handle the case when a state 's information is not known by returning "Unknown"

puts "Enter a state:"
input = gets.chomp

state = states.values_at(input)
capital =  capitals.values_at(state[0])

if states.include?(input)
  puts "The capital of #{input} is #{capital[0]}"
else
  puts "The capital of #{input} is Unknown"
end

# Level 3: Now let's go the other way.Given a capital name ("Denver"), return the state name for which it is the capital ("Colorado")

puts "Enter a Capital"
input = gets.chomp

capital_invert = capitals.invert
state_invert = states.invert

capital_cities = capital_invert.values_at(input)
states_x = state_invert.values_at(capital_cities[0])

if capital_invert.include?(input)
  puts "#{input} is the capital of #{states_x[0]}"
else
  puts "Unknown what state #{input} is the captial of."
end











