class Room 

  attr_reader(:room_number,:occupancy,:song,:capacity,:entry_fee)

  def initialize(room_number,occupancy,song,capacity,entry_fee)

    @room_number = room_number
    @occupancy = []
    @song = song
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

# def checking_the_room_has_fav_song 
#   if 






end 




