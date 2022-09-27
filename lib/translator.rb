require './lib/braille_alphabet'
require './lib/file_reader'

class Translator
  include BrailleAlphabet
  attr_reader :file_reader
  def initialize
    @braille_alphabet = BrailleAlphabet.new
    # @input_file = 'file'
  end
  
  message = file.read
  # require 'pry'; binding.pry
  prepare_message = message.downcase.gsub(/[^\w\s]/, '').chars

  top_row = []
  middle_row = []
  bottom_row = []
    prepare_message.each do |letter|
        top_row << braille_alphabet.alphabet[letter].first
        middle_row << braille_alphabet.alphabet[letter][1]
        bottom_row << braille_alphabet.alphabet[letter].last
    end

  convert_message = top_row.join('') + "\n" + middle_row.join('') + "\n" + bottom_row.join('') + "\n" + "\n"