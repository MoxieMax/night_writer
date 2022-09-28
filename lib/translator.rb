require './lib/braille_alphabet'
require './lib/file_reader'

class Translator
  attr_reader :file_reader,
              :braille_alphabet
  def initialize
    @braille_alphabet = BrailleAlphabet.new
  end
  
  def letter_to_braille(file)
        require 'pry'; binding.pry
    file_reader = file.read
    file_reader.each_char
  end
  
end