class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def remove_funds(amount)
    @wallet -= amount
  end





end
