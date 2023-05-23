require_relative '../lib/fizz_buzz'
require 'minitest/autorun'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal(1, fizz_buzz(1))
    assert_equal(2, fizz_buzz(2))
    assert_equal('fizz', fizz_buzz(3))
    assert_equal(4, fizz_buzz(4))
    assert_equal('buzz', fizz_buzz(5))
    assert_equal('fizz', fizz_buzz(6))
    assert_equal('buzz', fizz_buzz(10))
    assert_equal('fizz buzz', fizz_buzz(15))
    assert_equal('fizz buzz', fizz_buzz(30))

    assert_nil(fizz_buzz('a'))
    assert_nil(fizz_buzz(1.5))
    assert_nil(fizz_buzz(15.0))
    assert_nil(fizz_buzz(0))
    assert_nil(fizz_buzz(-5))
  end
end
