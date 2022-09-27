require './lib/braille_alphabet'
require 'spec_helper'

RSpec.describe BrailleAlphabet do
  let (:braille_alphabet) {BrailleAlphabet.new}
  
  it 'exists' do
    expect(braille_alphabet).to be_a(BrailleAlphabet)
  end
  
  it 'has readable attributes' do
    expect(braille_alphabet.alphabet).to be_a(Hash)
    expect(braille_alphabet.alphabet.keys[0]).to eq('a')
    expect(braille_alphabet.alphabet.keys[25]).to eq('z')
  end
  
  it 'can translate an English letter to Braille' do
    expect(braille_alphabet.english_to_braille('a')).to eq(["0.", "..", ".."])
  end
  
  # it 'can prepare a message for conversion' do
  #   require 'pry';binding.pry
  #   expect(@translator).to eq()
  # 
  # end
end