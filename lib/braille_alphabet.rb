class BrailleAlphabet
  attr_reader :alphabet
  def initialize
    @alphabet = {
                'a' => ['0.', '..', '..'],
                'b' => ['0.', '0.', '..'],
                'c' => ['00', '..', '..'],
                'd' => ['00', '.0', '..'],
                'e' => ['0.', '.0', '..'],
                'f' => ['00', '0.', '..'],
                'g' => ['00', '00', '..'],
                'h' => ['0.', '00', '..'],
                'i' => ['.0', '0.', '..'],
                'j' => ['.0', '.0', '..'],
                'k' => ['0.', '..', '0.'],
                'l' => ['0.', '0.', '0.'],
                'm' => ['00', '..', '0.'],
                'n' => ['00', '.0', '0.'],
                'o' => ['0.', '.0', '0.'],
                'p' => ['00', '0.', '0.'],
                'q' => ['00', '00', '0.'],
                'r' => ['0.', '00', '0.'],
                's' => ['.0', '0.', '0.'],
                't' => ['.0', '00', '0.'],
                'u' => ['0.', '..', '00'],
                'v' => ['0.', '0.', '00'],
                'w' => ['.0', '00', '.0'],
                'x' => ['00', '..', '00'],
                'y' => ['00', '.0', '00'],
                'z' => ['0.', '.0', '00'],
                ' ' => ['..', '..', '..']
              }
  end
  
  def english_to_braille(character)
    @alphabet[character]
  end
end

braille_alphabet = BrailleAlphabet.new
input_file = File.open(ARGV[0], 'r')
message = input_file.read
input_file.close
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

# require 'pry'; binding.pry
# gsub(/[^\w\s]/, '')
# gsub!(/[^a-z\s]/, '') => Wouldn't work without punctuation
# require 'pry'; binding.pry
# character_count = 0
# truncate_message = if character_count % 40 == 0 && character_count != 0

# 0. 0. 0. 0. 0. .. .0 0. 0. 0. 00
# 00 .0 0. 0. .0 .. 00 .0 00 0. .0
# .. .. 0. 0. 0. .. .0 0. 0. 0. ..