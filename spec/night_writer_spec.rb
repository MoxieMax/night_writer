require './lib/night_writer'
require_relative 'spec_helper'

RSpec.describe Night_writer do
  it 'exists' do
    night_writer = Night_writer.new
    expect(night_writer).to be_a(Night_writer)
  end

  xit 'can read a file' do
  end

end