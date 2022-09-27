require './lib/file_reader'
require './lib/night_writer'
require 'spec_helper'

RSpec.describe FileReader do
  let (:night_writer) {NightWriter.new}
  
  it 'can read text within the given .txt file' do
    #not sure how to test this, but running ruby lib/night_writer message.txt works and returns the length of the message
  end
end