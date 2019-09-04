class Pub

  attr_reader :name, :till

  def initialize(name, till)
    @name = name
    @till = till
    @stock = []

  end

  def add_funds_to_till(drink)
    @till += drink.price()
  end

  def stock_amount()
    return @stock.length()
  end

  def add_stock(drink)
    @stock.push(drink)
  end

  def remove_stock(drink)
    @stock.delete(drink)
  end

  def sell_drink(drink, customer)
    if confirm_customer_age(customer) == true
      remove_stock(drink)
      add_funds_to_till(drink)
      customer.remove_funds(drink.price)
    end
  end

  def get_age_from_customer(customer)
    return customer.age
  end

  def confirm_customer_age(customer)
    if get_age_from_customer(customer) >= 18
      return true
    end
  end

end
