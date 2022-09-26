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
    expect(@translator.letters).to be_a(Hash)
    expect(@translator.letters.keys[0]).to eq('a')
    expect(@translator.letters.keys[25]).to eq('z')
  end
  
  it 'can prepare a message for conversion' do
    require 'pry';binding.pry
    expect(@translator).to eq()
    
  end
end