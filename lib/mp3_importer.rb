class MP3Importer 

    

    attr_accessor :path

    

    def initialize(path)
        @path = path
        

        
    end

    def files
        #  binding.pry
         all_files = Dir[@path+"/*"]
         x = all_files.map do |file|
            file[@path.length + 1, file.length - 4]
         end
        #   binding.pry
       
    end


    def import
        files.each do |string|
            Song.new_by_filename(string)
            
        # binding.pry
        end
    end



end


    