require('minitest/autorun')
require('minitest/rg')
require_relative('../Drinks.rb')

class DrinkTest < MiniTest::Test

  def setup()

    @vodka = Drinks.new("Vodka", 2)
    @lager = Drinks.new("Lager", 3)
    @wine = Drinks.new("Wine", 5)

  end

  def test_get_drink_name()
    assert_equal("Vodka", @vodka.name)
  end

  
end
