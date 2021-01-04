require './spec_helper.rb'
require '../main.rb'

describe 'Order checker' do 
  it 'should return true or false' do
    expect(order_checker([1,2,3], [1,2,3,4], [1,2,3]).class).to eq(TrueClass || FalseClass)
  end
  it 'should accept only 3 arguments' do
    expect { order_checker(1,2) }.to raise_error(ArgumentError)
  end

  it 'should accept only 3 arguments' do
    expect { order_checker(1,2) }.to raise_error(ArgumentError)
  end

  it "should return false for" do 
    Take_Out_Orders = [1, 3, 5]
    Dine_In_Orders = [2, 4, 6]
    Served_Orders = [1, 2, 4, 6, 5, 3]
    expect(order_checker(Take_Out_Orders, Dine_In_Orders, Served_Orders)).to eq(false)
  end

  it "should return true for" do 
    Take_Out_Orders2 = [17, 8, 24]
    Dine_In_Orders2 = [12, 19, 2]
    Served_Orders2 = [17, 8, 12, 19, 24, 2] 
    expect(order_checker(Take_Out_Orders2, Dine_In_Orders2, Served_Orders2)).to eq(true)
  end
end
