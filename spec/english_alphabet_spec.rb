require './lib/english_alphabet'
require 'spec_helper'

RSpec.describe EnglishAlphabet do
  let (:english_alphabet) {EnglishAlphabet.new}
  
  it 'exists' do
    expect(english_alphabet).to be_a(EnglishAlphabet)
  end
  
  it 'has readable attributes' do
    expect(english_alphabet.alphabet).to be_a(Hash)
    expect(english_alphabet.alphabet.keys[0]).to eq(['0.', '..', '..'])
    expect(english_alphabet.alphabet.keys[25]).to eq(['0.', '.0', '00'])
    expect(english_alphabet.alphabet.keys[25]).to be_an(Array)
    expect(english_alphabet.alphabet.values[25]).to be_a(String)
  end
  
  it 'can translate a Braille letter to English' do
    expect(english_alphabet.braille_to_english(["0.", "..", ".."])).to eq('a')
  end
end