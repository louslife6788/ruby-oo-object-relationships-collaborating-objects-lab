class Artist


    @@all = []


    attr_accessor :name 

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def songs
        Song.all.select { |song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end


    def self.find(name)
        @@all.detect {|person| person.name == name}
    end

    def self.find_or_create_by_name(artist)
        if self.find(artist)
            self.find(artist)
        else     
            self.new(artist)

       end
    end

    def print_songs
        self.songs.each {|song| puts song.name}
    end



end
