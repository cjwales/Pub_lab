require('minitest/autorun')
require('minitest/rg')
require_relative('../Pub.rb')

class PubTest < MiniTest::Test

  def setup()

    @pub = Pub.new("The Dog & Duck", 100)

  end

  def test_get_pub_name()
    assert_equal("The Dog & Duck", @pub.name)

  end

  def test_get_pub_till()
    assert_equal(100, @pub.till)
  end

end
