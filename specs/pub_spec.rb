require 'minitest/autorun'
require 'minitest/rg'
require_relative '../pub.rb'
require_relative '../drink.rb'
require_relative '../customer.rb'


class TestPub < MiniTest::Test


def setup

  @drink1 = Drink.new("Beer", 4)
  @drinks = [@drink1]

  @pub_name = "The Bear and Fish"
  @pub = Pub.new(@pub_name, @drinks)

  @customer1 = Customer.new("Bob", 10)
end


  def test_pub_name
    assert_equal("The Bear and Fish", @pub.name)
  end

  def test_till__empty
    assert_equal( 0, @pub.till)
  end

  def test_sell_drink_change_till
    @pub.sell_drink_change_till("Beer", @customer1)
    assert_equal(4, @pub.till)
  end


end
