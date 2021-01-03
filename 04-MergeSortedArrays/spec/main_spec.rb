require './spec_helper.rb'
require '../main.rb'

describe 'merge_arrays' do
  it 'should return an array' do
    expect(merge_arrays([1,2,3],[1,2,3,4]).class).to eq(Array)
  end

  it 'should accept only 2 arguments' do
    expect { merge_arrays([1,2,3],[1,2,3,4], 1) }.to raise_error(ArgumentError)
  end
  it 'should return a sorted array' do
    array1 = [3, 4, 6, 10, 11, 15]
    array2 = [1, 5, 8, 12, 14, 19]
    expect(merge_arrays(array1,array2)).to eq([1, 3, 4, 5, 6, 8, 10, 11, 12, 14, 15, 19])
  end

end
