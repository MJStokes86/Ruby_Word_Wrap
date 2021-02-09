require 'spec_helper'
require_relative '../wrapper'


describe Wrapper do
describe "The wrap function" do  
it "returns empty string when called with nothing" do 
        expect(described_class.new.wrap("", 1)).to eq("")
end

it "returns the word if shorter than the length" do
    expect(described_class.new.wrap("word", 5)).to eq("word")
end

it "splits two words on the space" do 
    expect(described_class.new.wrap("word word", 5)).to eq("word\nword")
end

it "splits three words on the space" do 
    expect(described_class.new.wrap("word word word", 5)).to eq("word\nword\nword")
end

it "splits a long word on the length column" do 
    expect(described_class.new.wrap("longword", 4)).to eq("long\nword")
end

it "splits a short word on the length column" do 
    expect(described_class.new.wrap("short", 2)).to eq("sh\nor\nt")
end 

it "splits evenly by three on nine of the alphabet" do
    expect(described_class.new.wrap("abcdefghi", 3)).to eq("abc\ndef\nghi")
end


end
end