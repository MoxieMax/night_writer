require './lib/night_writer'
require_relative 'spec_helper'

RSpec.describe NightWriter do
  let (:night_writer) {NightWriter.new}
  
  it 'exists' do
    expect(night_writer).to be_a(NightWriter)
  end

  # xit 'can read a file' do
  # 
  # end

end