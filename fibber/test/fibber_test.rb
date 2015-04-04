require_relative 'fibber_test_helper'
require './lib/fibber'

class FibberTest < Minitest::Test
  def test_it_exists
    assert Fibber.new([0,1])
  end

  def test_it_generates_a_fifteen_number_sequence
    fib = Fibber.new([0,1])
    assert_equal "0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377", fib.generate_sequence
  end
end
