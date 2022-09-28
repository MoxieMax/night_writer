require 'spec_helper'
require './lib/translator'

RSpec.describe Translator do
  let (:translator) {Translator.new}
  
  it 'exists' do
    expect(translator).to be_a(Translator)
  end
  
  it 'initializes with a braille_alphabet' do
    # binding.pry
    expect(translator.braille_alphabet).to be_a(BrailleAlphabet)
  end
  
  it 'can translate letters to braille' do
    expect(translator.to_braille('a')).to be_an(Array)
  end
  
  xit 'can translate a file to braille' do
    file = double(message.txt, 'Hello wOrld')
    expect(translator.translate_to_braille).to eq(Array)
    
  end
  
  
  
  # it 'can prepare a message for conversion' do
  #   translator.prep_message
  #   binding.pry
  # end
end