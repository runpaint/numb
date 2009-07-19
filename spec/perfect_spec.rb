require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Integer, "#perfect?" do
  it "returns true for 6" do
    6.perfect?.should be_true
   end
end
