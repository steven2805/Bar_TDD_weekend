require('minitest/autorun')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')


class TestRooms < MiniTest::Test 

  def setup
    @song1 = Songs.new("bob", "ok song", "5:22")
    @room1 = Room.new(01, nil,@song1, 2, 50)
    @guest1 = Guests.new("Sam", 24, 400)
    @guest2 = Guests.new("Bob",20,600)
    @guest3 = Guests.new("Micheal",40,1100)
  end 

  def test_room_number
    assert_equal(01,@room1.room_number)
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
    assert_equal("bob",@room1.song.artist_name)
  end 

  def test_for_space_remaining
    @room1.add_guest_to_room(@guest1)
    # room1.add_guest_to_room(@guest2)
    # @room1.add_guest_to_room(@guest3)
    answer = @room1.check_if_room_full 
    assert_equal("still space remaining",answer)
  end



end 

