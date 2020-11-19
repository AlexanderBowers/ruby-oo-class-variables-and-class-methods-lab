class Song

    @@count = 0
    @@artists = []
    @@genres =[]

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    def self.genre_count
        genre_count = {}
        @@genres.each { |genre| genre_count[genre] = @@genres.count(genre) }
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each { |artist| artist_count[artist] = @@artists.count(artist) }
        artist_count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.count
        @@count
    end

end