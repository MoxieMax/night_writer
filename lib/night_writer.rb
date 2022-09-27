# require './translate'
# require 'braille_alphabet'
# 
# class NightWriter
# end

braille_alphabet = BrailleAlphabet.new
input_file = File.open(ARGV[0], 'r')
message = input_file.read
input_file.close
# require 'pry'; binding.pry
# gsub(/[^\w\s]/, '')
# gsub!(/[^a-z\s]/, '') => Wouldn't work without punctuation
# require 'pry'; binding.pry
# character_count = 0
# truncate_message = if character_count % 40 == 0 && character_count != 0
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
output_file = File.open(ARGV[1], 'w')
output_file.write(convert_message)
output_file.close
p "Created #{ARGV[1]} containing #{convert_message.length} characters"