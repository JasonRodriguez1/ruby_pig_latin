require 'rspec'
require 'pig_latina'

describe 'pig_latina' do
  it "adds 'way' to the end of a word that starts with a vowel" do
      pig_latina('apple').should eq 'appleway'
    end 
  it "moves the first consonant at the beginning of a word before a vowel to the end" do
      pig_latina('cronut').should eq 'onutcray'
    end
  it "takes words that start with 'qu' and moves it to the back of the bus and adds 'ay'" do
    pig_latina('quail').should eq 'ailquay'
    end 
  it "takes words that contain 'qu' and moves it to the back of the bus and adds 'ay' " do
    pig_latina('squeak').should eq 'eaksquay'
    end
end

describe 'pig' do
  it "handles multiple words" do
  pig('apple cronut quail squeak').should eq 'appleway onutcray ailquay eaksquay'
  end 
end  