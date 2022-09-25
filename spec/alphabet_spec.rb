require './lib/alphabet'
require 'spec_helper'

RSpec.describe Alphabet do
  before (:each) do
    @alphabet = Alphabet.new
  end
  
  it 'exists' do
    expect(@alphabet).to be_an(Alphabet)
  end
  
  it 'has readable attributes' do
    binding.pry
    expect(@alphabet.a).to eq([["0."], [".."], [".."]])
  end
end