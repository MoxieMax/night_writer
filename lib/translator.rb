require './lib/braille_alphabet'
# require './lib/english_alphabet'

class Translator
  attr_reader :braille_alphabet
  def initialize
    @braille_alphabet = BrailleAlphabet.new
  end
  # 
  # def method
  # end
end