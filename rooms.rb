class Room 

  attr_reader(:room_number,:occupancy,:capacity,:entry_fee,:entry_fee_total_profit)

  def initialize(room_number,capacity,entry_fee)

    @room_number = room_number
    @occupancy = []
    @songs = []
    @capacity = capacity
    @entry_fee =  entry_fee
    @entry_fee_total_profit = 0 

  end 

  def add_guest_to_room(guest)
    @occupancy.push(guest)
  end 

  def add_entry_fee_to_room_total_profit 
    @entry_fee_total_profit += @entry_fee
  end



# just clearing the room.

def guest_checks_out
  @occupancy.clear 
end 

def check_if_room_full 
  if @occupancy.length >= @capacity 
    return "Room is full"
  else 
    return "still space remaining"
  end 
end 

def add_song_to_room_playlist(new_song)
  @songs.push(new_song)
end 

# This only checks to see whether there is an exact matching single song. Searching can be by nmae of song or by name of artist

def checking_the_room_has_a_song(check_song)
  for song in @songs
    if song.artist_name == check_song
      return song.artist_name
    elsif song.song_name == check_song 
      return song.song_name
    else 
      return false 
    end 
  end 
end 

# This code is for comparing the gusets songs to those in the room.. compares the entire array of guest to the array storing the songs.

def compare_guest_fav_to_room_songlist(guest_fav_songs)
  matching_songs = guest_fav_songs.fav_songs & @songs
  return matching_songs.length
end


end 




