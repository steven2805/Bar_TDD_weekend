require('minitest/autorun')
require_relative('../bar')


class TestBar < MiniTest::Test

  def setup 
    @bar1 = Bar.new(100 ,50 ,25 ,10 )
  end

  def test_bar_pricing
    assert_equal(100,@bar1.drink1)
  end 

  def test_bar_at_zero_profit 
    assert_equal(0,@bar1.bar_profits)
  end 

end