require './spec_helper.rb'
require '../main.rb'

describe Fiboo do
  fiboo = Fiboo.new
  it 'should return 0 for 0' do
    expect(fiboo.fib(0)).to eq(0)
  end

  it 'should return 1 for 1' do
    expect(fiboo.fib(1)).to eq(1)
  end

  it 'should return 1 for 2' do
    expect(fiboo.fib(2)).to eq(1)
  end

  it 'should return 2 for 3' do
    expect(fiboo.fib(3)).to eq(2)
  end

  it 'should return 3 for 4' do
    expect(fiboo.fib(4)).to eq(3)
  end

end


=begin 


# Uncomment if you want to test just a method

describe 'testing just a function recursion' do
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


=end

