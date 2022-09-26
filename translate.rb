# require './lib/night_writer'
require './lib/alphabet'

# night_writer = NightWriter.new
input_file = File.open(ARGV[0], "r")
alphabet = Alphabet.new
message = input_file.read
input_file.close
change_message = message.downcase.chars
# method takes input of string, empty array for braille characters, iterated over letters, shovel in braille, flatten
# require 'pry'; binding.pry
output_file = File.open(ARGV[1], "w")
output_file.write(change_message)
output_file.close
# require 'pry'; binding.pry
p "Created #{ARGV[1]} containing #{change_message.length} characters"