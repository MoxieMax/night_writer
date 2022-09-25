# require './lib/night_writer'
require './lib/alphabet'

# night_writer = NightWriter.new
input_file = File.open(ARGV[0], "r")
alphabet = Alphabet.new
input_message = input_file.read
input_file.close
require 'pry'; binding.pry
change_message = input_message.downcase

output_file = File.open(ARGV[1], "w")
output_file.write(change_message)
output_file.close


require 'pry'; binding.pry

p "Created #{ARGV[1]} containing #{change_message.length} characters"