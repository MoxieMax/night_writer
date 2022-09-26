# require './translate'
# require 'alphabet.rb'

class NightWriter
  input_file = File.open(ARGV[0], "r")
  alphabet = Alphabet.new
  message = input_file.read
  input_file.close
  change_message = message.downcase.chars
  # require 'pry'; binding.pry
  output_file = File.open(ARGV[1], "w")
  output_file.write(change_message)
  output_file.close
  # require 'pry'; binding.pry
  p "Created #{ARGV[1]} containing #{change_message.length} characters"
end