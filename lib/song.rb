class Song 
     
    @@all = []

    attr_accessor :name, :artist


    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end

   def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
            artist.add_song(self)
   end

   def self.new_by_filename(filename)
        x = filename.split(/ \- /)
        new_song = self.new(x[1])
        new_song.artist_name = x[0]
        new_song
        # binding.pry
   end

    


end



