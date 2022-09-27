require './lib/file_reader'
require 'spec_helper'

RSpec.describe FileReader do
  let (:file_reader) {FileReader.new}
  
  it 'exists' do
    expect(file_reader).to be_a(FileReader)
  end
  
  # it 'can read text within the given .txt file' do
  #   filepath = 'path/to/file'
  #   mock_file = double(File)
  # 
  #   expect(File).to receive(:open).with(filepath).and_return(mock_file)
  # end
end