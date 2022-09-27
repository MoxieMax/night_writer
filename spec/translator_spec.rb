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
  
  # it 'can prepare a message for conversion' do
  #   translator.prep_message
  #   binding.pry
  # end
end