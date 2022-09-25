require './lib/translator'
require 'spec_helper'

RSpec.describe Translator do
  before (:each) do
    @translator = Translator.new
  end
  
  it 'exists' do
    expect(@translator).to be_a(Translator)
  end
  
  it 'has readable attributes' do
    binding.pry
    expect(@translator.letters).to be_a(Hash)
    expect(@translator.letters.keys[0]).to eq('a')
    expect(@translator.letters.keys[25]).to eq('z')
  end
end