# require_relative 'translator'
require_relative 'braille_alphabet'
require_relative 'file_reader'

class NightWriter
  # include BrailleAlphabet
  attr_reader :file_reader
  def initialize
    @file_reader = FileReader.new.read
  end
  
  # def completion_confirmation
  #   puts "Created file #{ARGV[0]} containing #{ARGV[0].length} characters"
  # end
  # 
  # def start
  #   #other methods
  #   self.completion_confirmation
  # end
    
end

# night_writer = NightWriter.new
# night_writer.start
