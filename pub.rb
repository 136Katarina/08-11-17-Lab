class Pub

attr_accessor :name, :drinks, :till, :drink

def initialize(name, drink)

  @name = name
  @drinks = drink
  @till = 0

end


def sell_drink_change_till(drink, customer)
   if customer.can_afford(drink) && customer.old_enough(18) && customer.too_drunk(10)
    @till += drink.price
    customer.wallet -= drink.price
    customer.drunkeness_level += drink.alcohol_level
  end
end



end
