require 'minitest/autorun'
require 'minitest/rg'
require_relative '../pub.rb'
require_relative '../drink.rb'
require_relative '../customer.rb'



class TestCustomer < MiniTest::Test


def setup

  @drink1 = Drink.new("Beer", 4)

  @pub_name = "The Bear and Fish"
  @pub = Pub.new(@pub_name, @drink1)

  @customer1 = Customer.new("Bob", 10, 55)
  @customer2= Customer.new("Andrew", 3, 17)

end

def test_customer_name
  assert_equal("Bob", @customer1.name)
end

def test_customer_wallet
  assert_equal(10, @customer1.wallet)
end

def test_can_afford__false
  assert_equal(false, @customer2.can_afford(@drink1))
end

def test_can_afford__true
  result = @customer1.can_afford(@drink1)
  assert_equal(true, result)
end

def test_old_enough__false
  assert_equal(false, @customer2.old_enough(18))
end

def test_old_enough__true
  assert_equal(true, @customer1.old_enough(18))
end


end
