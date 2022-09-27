module FileWriter
  def initialize
    @braille_alphabet = BrailleAlphabet.new
  end
  
  def a
  end

end
  
  
  
  output_file = File.open(ARGV[1], 'w')
  output_file.write(convert_message)
  output_file.close
  p "Created #{ARGV[1]} containing #{convert_message.length} characters"