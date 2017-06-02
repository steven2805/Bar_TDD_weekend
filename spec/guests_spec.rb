require('minitest/autorun')
require_relative('../guests')
require_relative('../rooms')
require_relative('../songs')



class TestGuests < MiniTest::Test 

  def setup
    @song1 = Songs.new("bob", "ok song", "5:22")
    @song2 = Songs.new("someone","slightly better song" , "8:00")
    @song2 = Songs.new("ACDC", "song song" , "2:55")
    @guest1 = Guests.new("Sam", 24, 400)
    @room1 = Room.new(01,2,50)
  end 

  def test_guest_name 
    assert_equal("Sam", @guest1.name)
  end

  def test_guest_age 
    assert_equal(24, @guest1.age)
  end

  def test_adding_a_new_fav_song
    @guest1.add_song_to_guests_fav(@song1)
    assert_equal(1,@guest1.fav_songs.length)
  end

  def test_deduct_entry_fee_from_customer
    @guest1.deducting_cost_from_guest(@room1)
    assert_equal(350, @guest1.wallet)
    assert_equal("Can afford",@guest1.can_afford_entry_fee(@room1))
  end

 def test_checking_whether_room_has_fav_song
  @guest1.add_song_to_guests_fav(@song1)
  @room1.add_song_to_room_playlist(@song1)
  answer = @room1.compare_guest_fav_to_room_songlist(@guest1)
  assert_equal(1,answer)
end 
  

end
