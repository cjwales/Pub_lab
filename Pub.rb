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

end
