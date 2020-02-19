require "pry"
class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def artist_name=(name)
    Artist.find_or_create_by(name)
  end 
  
  def self.new_by_filename(name) 
    split_name = name.split(" - ")
    song = self.new(split_name[1])
    song.artist_name = split_name[0]
  end 
  
end 