class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(file_name)
    song = Song.new(file_name)
    songArr = file_name.split(" - ")
    song.name = songArr[1]
    if song.artist == nil
      song.artist = Artist.new(songArr[0])
    end
    song
  end
end
