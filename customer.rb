class Customer

  attr_accessor :name, :wallet, :age, :drunkeness_level

  def initialize (name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkeness_level = 0
  end


  def can_afford (drink)
    if drink.price <= @wallet
      return true
    else
      return false
    end
  end

  def old_enough(age_limit)
    if age >= age_limit
      return true
    else
      return false
    end
  end

  def too_drunk(alcohol_limit)
    if drunkeness_level <= alcohol_limit
      return true
    else
      return false
    end
end

end
