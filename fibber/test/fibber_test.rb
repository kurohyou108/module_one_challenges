require_relative 'fibber_test_helper'
require './lib/fibber'

class FibberTest < Minitest::Test
  def test_it_exists
    assert Fibber.new([0,1], 24)
  end

  def test_it_generates_a_fibber_sequence
    fib = Fibber.new([0,1], 24)
    assert_equal [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025], fib.generate_sequence
  end

  def test_it_generates_a_five_numbers_per_line
    fib = Fibber.new([0,1], 24)
    # assert_equal "0 1 1 2 3", fib.challenge_one
    # assert_equal "5 8 13 21 34", fib.challenge_one
    assert_equal "55 89 144 233 377", fib.challenge_one
  end

  def test_it_puts_four_chars_of_padding_between_elements
    fib = Fibber.new([0,1], 24)
    # assert_equal "   0   1   1   2   3", fib.challenge_two
    # assert_equal "   5   8  13  21  34", fib.challenge_two
    assert_equal "  55  89 144 233 377", fib.challenge_two
  end

  def test_it_outputs_padding_one_character_more_than_final_number_output
    fib = Fibber.new([0,1], 24)
    # assert_equal "     0     1     1     2     3", fib.challenge_three
    # assert_equal "     5     8    13    21    34", fib.challenge_three
    # assert_equal "    55    89   144   233   377", fib.challenge_three
    # assert_equal "   610   987  1597  2584  4181", fib.challenge_three
    assert_equal "  6765 10946 17711 28657 46368", fib.challenge_three
  end


end
