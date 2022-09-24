# require './translate'

class NightWriter
  # attr_reader
  def translate_letter(text)
    message = text.split
    message.each do |letter|
      print letter[0] + " " 
    end
    print "\n"
    
    message.each do |letter|
      print letter[1] + " " 
    end
    print "\n"
    
    message.each do |letter|
      print letter[2] + " " 
    end
    require 'pry'; binding.pry
  end
end