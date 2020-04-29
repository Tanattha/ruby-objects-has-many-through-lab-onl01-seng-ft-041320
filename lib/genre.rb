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

#has many songs
    def songs
        Song.all { |song| song.genre == self }
    end

#has many artists, through songs
    def artists
        songs.map{|song| song.artist}
    end

end