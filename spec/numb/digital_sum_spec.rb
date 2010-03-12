describe Integer, "#digital_sum" do
  it "returns the sum of the digits of self" do
    1.digital_sum.should == 1
    10.digital_sum.should == 1
    22.digital_sum.should == 4
    282761.digital_sum.should == 26
  end
end
