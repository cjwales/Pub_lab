require('minitest/autorun')
require('minitest/rg')
require_relative('../Customer.rb')


class CustomerTest < MiniTest::Test

  def setup()

    @customer1 = Customer.new("Clyde", 10)


  end

  def test_get_customer_name()
    assert_equal("Clyde", @customer1.name)
  end

  def test_get_customer_wallet()
    assert_equal(10, @customer1.wallet)
  end

  def test_remove_funds()
    @customer1.remove_funds(1)
    assert_equal(9,@customer1.wallet)
  end

end
