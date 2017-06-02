class Room 

  attr_reader(:room_number,:occupancy,:capacity,:entry_fee)

  def initialize(room_number,capacity,entry_fee)

    @room_number = room_number
    @occupancy = []
    @songs = []
    @capacity = capacity
    @entry_fee =  entry_fee 

  end 

  def add_guest_to_room(guest)
    @occupancy.push(guest)
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

def deducting_cost_from_guest(customer)
  return customer.wallet -= @entry_fee
end 

def add_song_to_room_playlist(new_song)
  @songs.push(new_song)
end 

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


end 




