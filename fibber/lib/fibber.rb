class Fibber

  def initialize(sequence_start = [0,1])
    @sequence_start = sequence_start
  end

  def generate_sequence
    13.times do
      n = @sequence_start.last + @sequence_start[-2]
      @sequence_start.push(n)
    end
    return @sequence_start
  end

  def divide_lines
    line_one = generate_sequence.slice(0..4).join(" ")
    line_two = generate_sequence.slice(5..9).join(" ")
    line_three = generate_sequence.slice(10..14).join(" ")

    puts line_one
    puts line_two
    puts line_three
  end

end

fibber = Fibber.new([0,1])
puts fibber.divide_lines