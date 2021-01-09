require './spec_helper.rb'
require '../main.rb'

describe 'fib (n) should return nth fibonacci number' do
  it 'should return 0 for 0' do
    expect(fib(0)).to eq(0)
  end

  it 'should return 1 for 1' do
    expect(fib(1)).to eq(1)
  end

  it 'should return 1 for 2' do
    expect(fib(2)).to eq(1)
  end

  it 'should return 2 for 3' do
    expect(fib(3)).to eq(2)
  end

  it 'should return 3 for 4' do
    expect(fib(4)).to eq(3)
  end

end
