require './lib/file_reader'
require 'spec_helper'

RSpec.describe FileReader do
  let (:file_reader) {FileReader.new}
  # let (:filepath) {'./data/message.txt'}
  
  it 'exists' do
    expect(file_reader).to be_a(FileReader)
  end
  
  it 'can read text within the given .txt file' do
    expect(file_reader.read).to eq('HELLO WOrLd!?')
  end
end