class Pub

attr_accessor :name, :drinks, :till

def initialize(name, drinks)

  @name = name
  @drinks = drinks
  @till = 0

end


def sell_drink_change_till(drink_name, customer)
  for drink in @drinks
    if drink.name == drink_name
      @till += drink.price
      customer.wallet -= drink.price
      return
    end
  end

end



end
