require('minitest/autorun')
require_relative('../songs')


class TestSongs < MiniTest::Test 

  def setup

    @song1 = Songs.new("bob", "ok song", "5:22")

  end 

  def test_artist_name 
    assert_equal("bob", @song1.artist_name)

  end 

  def test_song_anme
    assert_equal("ok song", @song1.song_name)
  end 
end 
