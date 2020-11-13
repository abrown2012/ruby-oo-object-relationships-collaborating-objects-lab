class Song
    attr_accessor :artist, :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      
      save
    end
  
    def save
      @@all << self
    end
  
    def self.all
      @@all
    end

    def self.new_by_filename(filename)
        song = self.new(name)
        song.name = filename.split(" - ")[1]
        created_artist = Artist.new(name)
        song.artist = created_artist 
        created_artist.name = filename.split(" - ")[0]
        song      
    end

    
    def artist_name=(name)
        if !self.artist.nil? 
            self.artist.name = name
        elsif Artist.all.find {|art_name| art_name.name == name} 
            self.artist = Artist.all.find {|art_name| art_name.name == name} 
        else
            self.artist = Artist.new(name)
        end 
    end 

  end 
