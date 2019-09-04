require('minitest/autorun')
require('minitest/rg')
require_relative('../Pub.rb')
require_relative('../Drinks.rb')

class PubTest < MiniTest::Test

  def setup()

    @pub = Pub.new("The Dog & Duck", 100)
    @wine = Drinks.new("Wine", 5)
    @vodka = Drinks.new("Vodka", 2)

  end

  def test_get_pub_name()
    assert_equal("The Dog & Duck", @pub.name)

  end

  def test_get_pub_till()
    assert_equal(100, @pub.till)
  end

  def test_add_funds_to_till_balance()
    @pub.add_funds_to_till(@wine)
    assert_equal(105, @pub.till)
  end

  def test_check_stock_level()
    assert_equal(0, @pub.stock_amount())
  end

  def test_add_drinks_to_stock()
    @pub.add_stock(@wine)
    @pub.add_stock(@vodka)
    assert_equal(2, @pub.stock_amount())
  end

  def test_remove_stock()
    @pub.add_stock(@wine)
    @pub.add_stock(@vodka)
    @pub.remove_stock(@wine)
    assert_equal(1, @pub.stock_amount)
  end
end
