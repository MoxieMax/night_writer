require './lib/braille_alphabet'
# require './lib/english_alphabet'

class Translator
  attr_reader :braille_alphabet
  def initialize
    @braille_alphabet = BrailleAlphabet.new
    # @input_file = 'file'
  end
  
  # def prep_message
  #   message = input_file.read
  #   message.downcase.gsub(/[^\w\s]/, '').chars
  #   top_row = []
  #   middle_row = []
  #   bottom_row = []
  #     prepare_message.each do |letter|
  #       top_row << braille_alphabet.alphabet[letter].first
  #       middle_row << braille_alphabet.alphabet[letter][1]
  #       bottom_row << braille_alphabet.alphabet[letter].last
  #     end
  #     require 'pry'; binding.pry
  # end
end


# braille_alphabet = BrailleAlphabet.new
# input_file = File.open(ARGV[0], 'r')
# message = input_file.read
# # require 'pry'; binding.pry
# input_file.close
# prepare_message = message.downcase.gsub(/[^\w\s]/, '').chars
# 
# top_row = []
# middle_row = []
# bottom_row = []
#   prepare_message.each do |letter|
#       top_row << braille_alphabet.alphabet[letter].first
#       middle_row << braille_alphabet.alphabet[letter][1]
#       bottom_row << braille_alphabet.alphabet[letter].last
#   end
# 
# convert_message = top_row.join('') + "\n" + middle_row.join('') + "\n" + bottom_row.join('') + "\n" + "\n"
# output_file = File.open(ARGV[1], 'w')
# output_file.write(convert_message)
# output_file.close
# p "Created #{ARGV[1]} containing #{convert_message.length} characters"
