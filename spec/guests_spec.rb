require('minitest/autorun')
require_relative('../guests')
require_relative('../rooms')
require_relative('../songs')



class TestGuests < MiniTest::Test 

  def setup
    @song1 = Songs.new("bob", "ok song", "5:22")
    @guest1 = Guests.new("Sam", 24, 400)
    @room1 = Room.new(01,nil,@song1,2,50)
  end 

  def test_guest_name 
    assert_equal("Sam", @guest1.name)
  end

  def test_guest_age 
    assert_equal(24, @guest1.age)
  end

  def test_deduct_from_customer
    @room1.deducting_cost_from_guest(@guest1)
    assert_equal(350, @guest1.wallet)
  end

  def test_checking_which_room_has_favsong
    assert_equal("ok song",)
  end 
  

end
