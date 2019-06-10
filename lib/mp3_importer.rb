require 'pry'

class MP3Importer
  attr_accessor :path, :fileNames
  def initialize(pathName)
    @path = pathName
    @fileNames = []
  end
  def files
    Dir.entries(path).each do |file|
      @fileNames << "#{file}"
    end
    @fileNames.delete_if {|chr| chr == "." || chr == ".."}
  end
end
