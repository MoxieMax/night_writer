require './lib/night_writer'

# night_writer = NightWriter.new
input_file = File.open(ARGV[0], "r")
input_message = input_file.read
input_file.close
change_message = input_message.to_s.upcase

output_file = File.open(ARGV[1], "w")
output_file.write(change_message)
output_file.close

p "Created #{ARGV[1]} containing #{change_message.length} characters"