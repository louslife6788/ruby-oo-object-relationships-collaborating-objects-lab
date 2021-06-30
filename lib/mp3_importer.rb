class MP3Importer 

    

    attr_accessor :path

    

    def initialize(path)          # path is equal to ./spec/fixtures/mp3s  wich is directions to a folder

        @path = path
        

        
    end

    def files
        #  binding.pry
         all_files = Dir[@path+"/*"] #this is equal to  ./spec/fixtures/mp3s/* wich enters the folder containing the files and saves them as the varible all_files
         x = all_files.map do |file|
            file[@path.length + 1, file.length - 4] #x = ["Action Bronson - Larry Csonka - indie.mp3",
                                                            # "Real Estate - Green Aisles - country.mp3",
                                                            # "Real Estate - It's Real - hip-hop.mp3",
                                                            # "Thundercat - For Love I Come - dance.mp3"]
         end
          
       
    end


    def import
        files.each do |string|
            Song.new_by_filename(string)
            
        # binding.pry
        end
    end



end


    