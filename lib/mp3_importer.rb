class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path 
    end

    def files
        dr = Dir.entries(self.path)
        new_array = dr[2..-1]
        
    end 
 
    def import
      self.files.each{ |filename| Song.new_by_filename(filename) }
    end
end