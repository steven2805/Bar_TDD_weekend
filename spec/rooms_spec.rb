require('minitest/autorun')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')


class TestRooms < MiniTest::Test 

  def setup
    @song1 = Songs.new("bob", "ok song", "5:22")
    @room1 = Room.new(01, 2, 50)
    @guest1 = Guests.new("Sam", 24, 400)
    @guest2 = Guests.new("Bob",20,600)
    @guest3 = Guests.new("Micheal",40,1100)
  end 

  def test_room_number
    assert_equal(01,@room1.room_number)
  end

  def test_adding_money_to_the_total_room_profit
    # @room1.add_guest_to_room(@guest1)
    @room1.add_entry_fee_to_room_total_profit
    @room1.add_entry_fee_to_room_total_profit
    assert_equal(100,@room1.entry_fee_total_profit)
  end 

  def test_adding_guest_to_room
    @room1.add_guest_to_room(@guest1)
    assert_equal(1,@room1.occupancy.length)
  end 

  def test_checking_empty_room 
    @room1.guest_checks_out
    assert_equal(0,@room1.occupancy.length)
  end 

  def test_checking_songs_are_working
    @room1.add_song_to_room_playlist(@song1)
    assert_equal("ok song",@room1.checking_the_room_has_a_song("ok song"))
  end 

  def test_for_space_remaining_in_room
    @room1.add_guest_to_room(@guest1)
    # room1.add_guest_to_room(@guest2)
    # @room1.add_guest_to_room(@guest3)
    answer = @room1.check_if_room_full 
    assert_equal("still space remaining",answer)
  end



end 

