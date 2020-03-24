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
    Song.all.select do |song|
      if song.genre == self
        song
      end
    end
  end

  def artists
    binding.pry
    songs.collect {|song| song.artist}
  end

end
