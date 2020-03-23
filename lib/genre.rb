require 'pry'
class Genre

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.collect do |song|
      if song.genre.name == self.name
        song
      end
    end
  end

  def artists
    songs.collect {|song| song.artist}
  end

end
