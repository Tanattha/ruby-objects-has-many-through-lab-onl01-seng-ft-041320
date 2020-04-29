class Song
attr_accessor :name
attr_reader :artist, :genre
@@all = []
def initialize(name,artist,genre)
    @name = name
    @artist = artist #belongs to a artist
    @genre = genre #belongs to a genre
    @@all << self
end

def self.all
    @@all
end

end