class Guests


  attr_accessor(:name, :age, :wallet,:fav_songs)

  def initialize(name, age, wallet)
    @name = name 
    @age = age 
    @wallet = wallet
    @fav_songs = []
  end 

  def add_song_to_guests_fav(new_song)
    @fav_songs.push(new_song)
  end 

  def can_afford_entry_fee(room)
    if @wallet < room.entry_fee
      return "Can't afford "
    else 
      return "Can afford"
  end
  end 

  def deducting_cost_from_guest(room)
    return @wallet -= room.entry_fee
  end 
end
