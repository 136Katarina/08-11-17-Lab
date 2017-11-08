require 'minitest/autorun'
require 'minitest/rg'
require_relative '../pub.rb'
require_relative '../drink.rb'
require_relative '../customer.rb'


class TestPub < MiniTest::Test

def setup

  @drink1 = Drink.new("Beer", 4, 5)

  @pub_name = "The Bear and Fish"
  @pub = Pub.new(@pub_name, @drink1)

  @customer1 = Customer.new("Bob", 10, 55)
  @customer2= Customer.new("Andrew", 4, 17)
end


  def test_pub_name
    assert_equal("The Bear and Fish", @pub.name)
  end

  def test_till__empty
    assert_equal(0, @pub.till)
  end

  def test_sell_drink_change_till
    @pub.sell_drink_change_till(@drink1, @customer1)
    assert_equal(4, @pub.till)
    assert_equal(6, @customer1.wallet)
  end

  def test_sell_drink_change_till__too_drunk
    @customer1.drunkeness_level = 50
    @pub.sell_drink_change_till(@drink1, @customer1)
    assert_equal(4, @pub.till)
    assert_equal(6, @customer1.wallet)
  end


end
