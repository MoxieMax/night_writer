module FileReader
  def read
    file = File.open(ARGV[0], 'r')
    File.read(file)
    message = file.read
  end
end