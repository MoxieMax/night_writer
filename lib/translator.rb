class Translator
  attr_reader :letters
  def initialize
    @letters = {
                'a' => ["0.", "..", ".."],
                'b' => ["0.", "0.", ".."],
                'c' => ["00", "..", ".."],
                'd' => ["00", ".0", ".."],
                'e' => ["0.", ".0", ".."],
                'f' => ["00", "0.", ".."],
                'g' => ["00", "00", ".."],
                'h' => ["0.", "00", ".."],
                'i' => [".0", "0.", ".."],
                'j' => [".0", ".0", ".."],
                'k' => ["0.", "..", "0."],
                'l' => ["0.", "0.", "0."],
                'm' => ["00", "..", "0."],
                'n' => ["00", ".0", "0."],
                'o' => ["0.", ".0", "0."],
                'p' => ["00", "0.", "0."],
                'q' => ["00", "00", "0."],
                'r' => ["0.", "00", "0."],
                's' => [".0", "0.", "0."],
                't' => [".0", "00", "0."],
                'u' => ["0.", "..", "00"],
                'v' => ["0.", "0.", "00"],
                'w' => [".0", "00", ".0"],
                'x' => ["00", "..", "00"],
                'y' => ["00", ".0", "00"],
                'z' => ["0.", ".0", "00"],
                ' ' => ["..", "..", ".."]
              }
  end
  # def convert_for_translation

  # end
    
end
# require 'pry'; binding.pry
translator = Translator.new
input_file = File.open(ARGV[0], "r")
message = input_file.read
input_file.close
prepare_message = message.downcase.gsub!(/[^a-z\s]/, '').chars
top_row = []
middle_row = []
bottom_row = []
  prepare_message.each do |letter|
      top_row << translator.letters[letter].first
      middle_row << translator.letters[letter][1]
      bottom_row << translator.letters[letter].last
  end
convert_message = top_row.join(" ") + "\n" + middle_row.join(" ") + "\n" + bottom_row.join(" ") + "\n"
output_file = File.open(ARGV[1], "w")
output_file.write(convert_message)
output_file.close
p "Created #{ARGV[1]} containing #{convert_message.length} characters"

#prints punctuation as space at the end

# 0. 0. 0. 0. 0. .. .0 0. 0. 0. 00
# 00 .0 0. 0. .0 .. 00 .0 00 0. .0
# .. .. 0. 0. 0. .. .0 0. 0. 0. ..