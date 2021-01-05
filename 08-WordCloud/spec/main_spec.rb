require './spec_helper.rb'
require '../main.rb'

describe 'word_cloud method' do
  it 'should take a single argument' do
    expect { word_cloud('a','b') }.to raise_error(ArgumentError)
  end

  it "should return the right hash for 'I like cake'" do
    expect(word_cloud("I like cake")).to eq({ 'I' => 1, 'like' => 1, 'cake' => 1 })
  end

  it "should return the right hash for 'Chocolate cake for dinner and pound cake for dessert'" do
    expect(word_cloud("Chocolate cake for dinner and pound cake for dessert")).to eq({ 'and' => 1, 'pound' => 1, 'for' => 2, 'dessert' => 1, 'Chocolate' => 1, 'dinner' => 1, 'cake' => 2, })
  end
end
