describe Integer, "#reverse" do
  it "returns single digits as-is" do
    (0..9).each do |n|
      n.reverse.should == n
    end
  end

  [[10,1], [99, 99], [1234, 4321], [101, 101], [8272, 2728]].each do |n,r|
    it "returns #{r} for #{n}" do
      n.reverse.should == r
    end
  end
end
