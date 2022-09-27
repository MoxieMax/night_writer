class FileReader
  def read
    file_read = ARGV[0]
    File.read(file_read)
    require'pry';binding.pry
  end
end