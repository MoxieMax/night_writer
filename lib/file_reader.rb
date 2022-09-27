module FileReader
  def read
    # file = File.open('./message.txt', 'r')
    file = File.open(ARGV[0], 'r')
    # file_read = ARGV[0]
    File.read(file)
    # require'pry';binding.pry
    message = file.read
  end
end
# 
# 
# 
# class FileReader
#   def read
#     file_read = ARGV[0]
#     require'pry';binding.pry
#     File.read(file_read)
#   end
# end