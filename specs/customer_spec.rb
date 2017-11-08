require 'minitest/autorun'
require 'minitest/rg'
require_relative '../pub.rb'
require_relative '../drink.rb'
require_relative '../customer.rb'



class TestCustomer < MiniTest::Test


def setup

  @drink1 = Drink.new("Beer", 4)
  @drinks = [@drink1]

  @pub_name = "The Bear and Fish"
  @pub = Pub.new(@pub_name, @drinks)
  @customer1 = Customer.new("Bob", 10)

end

def test_customer_name
  assert_equal("Bob", @customer1.name)
end

def test_customer_wallet
  assert_equal(10, @customer1.wallet)
end








# assert_equal(1, @customer.table.count)

end
