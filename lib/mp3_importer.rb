require 'pry'

class MP3Importer
  attr_accessor :path, :filenams
  def initialize(pathName)
    @path = pathName
    @filenams = []
  end
  def files
    Dir.entries(path).each do |filename|
          @filenams << "#{filename}"
        end
        @filenams.delete_if {|x| x == "." || x == ".."}
    # binding.pry
  end
end
