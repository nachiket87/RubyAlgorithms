require 'spec_helper'
require '../main.rb'

describe "reverse_string" do
  it "should return a string" do
    expect(reverse_string("nachiket").class).to eq(String)
  end

  it "should return reversed string" do 
    expect(reverse_string("nachiket")).to eq("tekihcan")
  end

end
