class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(file_name)
    song = Song.new(file_name)
    songArr = file_name.split(" - ")
    song.name = songArr[1]
    # song.artist = Artist.find_or_create_by_name(songArr[0])
    song.artist = Artist.new(songArr[0])
    song.artist.save
    song
  end
end
