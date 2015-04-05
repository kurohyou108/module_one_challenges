class Fibber

  def initialize(sequence_start = [0,1])
    @sequence_start = sequence_start
  end

  #Generate Fibbonachi Sequence
  def generate_sequence
    22.times do
      n = @sequence_start.last + @sequence_start[-2]
      @sequence_start.push(n)
    end
    return @sequence_start
  end

  #Break Generated sequence into lines
  def line_one
    line_one = generate_sequence.slice(0..4).join(" ")
    return line_one
  end

  def line_two
    line_two = generate_sequence.slice(5..9).join(" ")
    return line_two
  end

  def line_three
    line_three = generate_sequence.slice(10..14).join(" ")
    return line_three
  end

#Challenge 2: A better Output
  def challenge_two_line_one
    c2_line_one = generate_sequence.slice(0..4)

    map_1 = c2_line_one.map do |n|
      n.to_s.rjust(4, " ")
    end

    return map_1.join("")

  end

  def challenge_two_line_two
    c2_line_two = generate_sequence.slice(5..9)

    map_2 = c2_line_two.map do |n|
      n.to_s.rjust(4, " ")
    end

    return map_2.join("")
  end

  def challenge_two_line_three
    c2_line_three = generate_sequence.slice(10..14)

    map_3 = c2_line_three.map do |n|
      n.to_s.rjust(4, " ")
    end

    return map_3.join("")
  end

  #Challenge 3:Brute Force
  def c3_line_one
    sequence_padding = generate_sequence[24].to_s
    x = sequence_padding.chars.length

    challenge_3_sequence = generate_sequence.slice(0..4)

    map_1 = challenge_3_sequence.map do |n|
      n.to_s.rjust(x+1, " ")
    end

    return map_1.join("")
  end

  def c3_line_two
    sequence_padding = generate_sequence[24].to_s
    x = sequence_padding.chars.length

    challenge_3_sequence = generate_sequence.slice(5..9)

    map_2 = challenge_3_sequence.map do |n|
      n.to_s.rjust(x+1, " ")
    end

    return map_2.join("")
  end

  def c3_line_three
    sequence_padding = generate_sequence[24].to_s
    x = sequence_padding.chars.length

    challenge_3_sequence = generate_sequence.slice(10..14)

    map_3 = challenge_3_sequence.map do |n|
      n.to_s.rjust(x+1, " ")
    end

    return map_3.join("")
  end

  def c3_line_four
    sequence_padding = generate_sequence[24].to_s
    x = sequence_padding.chars.length

    challenge_3_sequence = generate_sequence.slice(15..19)

    map_4 = challenge_3_sequence.map do |n|
      n.to_s.rjust(x+1, " ")
    end

    return map_4.join("")
  end

  def c3_line_five
    sequence_padding = generate_sequence[24].to_s
    x = sequence_padding.chars.length

    challenge_3_sequence = generate_sequence.slice(20..24)

    map_5 = challenge_3_sequence.map do |n|
      n.to_s.rjust(x+1, " ")
    end

    return map_5.join("")
  end

end

fibber = Fibber.new([0,1])
puts "Challenge 1: Jagged Output"
puts fibber.line_one
puts fibber.line_two
puts fibber.line_three
puts "\n"

puts "Challenge2: Better Output"
puts fibber.challenge_two_line_one
puts fibber.challenge_two_line_two
puts fibber.challenge_two_line_three
puts "\n"

puts "Challenge 3: Fancy Output"
puts fibber.c3_line_one
puts fibber.c3_line_two
puts fibber.c3_line_three
puts fibber.c3_line_four
puts fibber.c3_line_five










