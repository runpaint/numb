describe Integer, "#politeness" do
  it "returns number of non-trivial ways to write n as the sum of >= 2 consecutive integers" do
    [0,0,0,1,0,1,1,1,0,2,1,1,1,1,1,3,0,1,2,1,1,3,1,1,
     1,2,1,3,1,1,3,1,0,3,1,3,2,1,1,3,1,1,3,1,1,5,1,1,1,
     2,2,3,1,1,3,3,1,3,1,1,3,1,1,5,0,3,3,1,1,3,3,1,2,1,
     1,5,1,3,3,1,1,4,1,1,3,3,1,3,1,1,5,3,1,3,1,3,1,1,2,
     5,2].each_with_index do |politeness, number|
      number.politeness.should == politeness
    end
  end
end
