require 'pry'

class MP3Importer
  attr_accessor :path, :filenames
  def initialize(pathName)
    @path = pathName
    @filenames = []
  end
  def files
    Dir.entries(path).each do |file|
      # if !(file.include? "..")
        @filenames << "#{file}"
      # end
    end
    @files.delete_if {|x| x == "." || x == ".."}
    binding.pry
  end
end
