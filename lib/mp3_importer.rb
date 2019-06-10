require 'pry'

class MP3Importer
  attr_accessor :path, :files
  def initialize(pathName)
    @path = pathName
    @files = []
  end
  def files
    Dir.entries(path).each do |file|
      if !(file.include?)
        @files << "#{file}"
    end
    binding.pry
  end
end
