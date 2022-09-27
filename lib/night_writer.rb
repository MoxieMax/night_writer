# require_relative 'translator'
require_relative 'braille_alphabet'
require_relative 'file_reader'

class NightWriter
  # include BrailleAlphabet
  attr_reader :file_reader
  def initialize
    @file_reader = FileReader.new.read
  end
  p "Read file #{ARGV[0]} containing #{ARGV[0].length} characters"
  
end

#   # def return_text
#   # 
#   #   p "Created #{ARGV[0]} containing #{ARGV[0].length} characters"
#   # end
# end

