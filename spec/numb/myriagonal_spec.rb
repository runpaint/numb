describe Integer, "#myriagonal?" do

  @spec = [0, 1, 10000, 29997, 59992, 99985, 149976, 209965, 279952, 
           359937, 449920, 549901, 659880, 779857, 909832, 1049805, 
           1199776, 1359745, 1529712, 1709677, 1899640, 2099601].to_seq

  @spec.each do |n|
    it "should return true for myriagonal number #{n}" do
      n.should be_myriagonal
    end
  end

  @spec.invert.sample(10).each do |n|
    it "should return false for non-myriagonal number #{n}" do
      n.should_not be_myriagonal
    end
  end
end
