require './spec_helper.rb'
require '../main.rb'

describe 'Method is_palindrome?' do
  it 'should accept a string string as argument' do
    expect { is_palindrome?('a','b') }.to raise_error(ArgumentError)
  end
  it "should return true for 'civic'" do
    expect(is_palindrome?('civic')).to eq(true)
  end
  it "should return false for 'livci'" do
    expect(is_palindrome?('livci')).to eq(false)
  end
  it "'ivicc' should return true" do
    expect(is_palindrome?('ivicc')).to eq(true)
  end
  it "'civil' should return false" do
    expect(is_palindrome?('livci')).to eq(false)
  end
end


