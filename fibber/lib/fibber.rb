class Fibber

  def initialize(sequence_start = [0,1], fibnum)
    @sequence_start = sequence_start
    @fibnum = fibnum
  end

  #Generate Fibbonachi Sequence
  def generate_sequence
    @fibnum.times do
      n = @sequence_start.last + @sequence_start[-2]
      @sequence_start.push(n)
    end
    return @sequence_start
  end

  #Break Generated sequence into lines
  def challenge_one
    puts generate_sequence.slice(0..4).join(" ")
    puts generate_sequence.slice(5..9).join(" ")
    puts generate_sequence.slice(10..14).join(" ")
  end

#Challenge 2: A better Output
  def challenge_two
    challenge_two_sequence = generate_sequence.map do |n|
      n.to_s.rjust(4, " ")
    end

    puts challenge_two_sequence[0..4].join("")
    puts challenge_two_sequence[5..9].join("")
    puts challenge_two_sequence[10..14].join("")
  end

  #Challenge 3:Brute Force
  def challenge_three
    sequence_padding = generate_sequence[@fibnum].to_s
    x = sequence_padding.chars.length

    challenge_three_sequence = generate_sequence.map do |n|
      n.to_s.rjust(x+1, " ")
    end

    puts challenge_three_sequence[0..4].join("")
    puts challenge_three_sequence[5..9].join("")
    puts challenge_three_sequence[10..14].join("")
    puts challenge_three_sequence[15..19].join("")
    puts challenge_three_sequence[20..24].join("")

  end
end

fibber = Fibber.new([0,1], 24)
puts "Challenge 1: Jagged Output"
puts fibber.challenge_one
puts "\n"

puts "Challenge2: Better Output"
puts fibber.challenge_two
puts "\n"

puts "Challenge 3: Fancy Output"
puts fibber.challenge_three