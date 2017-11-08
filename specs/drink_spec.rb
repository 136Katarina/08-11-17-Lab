require 'minitest/autorun'
require 'minitest/rg'
require_relative '../drink.rb'



class TestDrink < MiniTest::Test

  def setup

    @drink1 = Drink.new("Beer", 4)
    @drinks = [@drink1]

  end

  def test_drink_name
    assert_equal("Beer", @drink1.name)
  end


  def test_drink_price
    assert_equal(4, @drink1.price)
  end

end
