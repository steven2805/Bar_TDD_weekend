require('minitest/autorun')
require_relative('../bar')


class TestBar < MiniTest::Test

  def setup 
  @bar1 = Bar.new
   
  end

  def test_bar_pricing
    @bar1.add_drink_to_drinks_list(:something ,100)
    @bar1.add_drink_to_drinks_list(:newdrink,50)
    assert_equal(100,@bar1.drinks[:something])
  end 

  def test_bar_at_zero_profit 
    assert_equal(0,@bar1.bar_profits)
  end 

  def test_bar_makes_sale
    @bar1.add_drink_to_drinks_list(:something ,100)
    @bar1.add_drink_to_drinks_list(:newdrink,50)
    @bar1.adding_sale_to_profits(:something)
    @bar1.adding_sale_to_profits(:newdrink)
    assert_equal(150,@bar1.bar_profits)
  end 



end




