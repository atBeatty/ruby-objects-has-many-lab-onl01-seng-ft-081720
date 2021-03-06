# the artist can have as many songs associated to it
# HAS MANY
# we can show the the Artist has many Song instances
require 'pry'




class Artist
    attr_accessor :name, :songs
    
    def initialize(name)
       @name = name
       @songs = []
    end



    def add_song(song)
        @songs << song
        song.artist = self

    end

    def add_song_by_name(song)
        song = Song.new(song)
        song.artist = self
        @songs << song
    end

    def songs
        Song.all.select do |song| 
            song.artist == self
        end
    end

    def self.song_count
        Song.all.count
       
    end







   
   
end
