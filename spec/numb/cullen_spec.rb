describe Integer, "#cullen?" do
  # A002064
  @seq = [1,3,9,25,65,161,385,897,2049,4609,10241,22529,
          49153,106497,229377,491521,1048577,2228225,
          4718593,9961473,20971521,44040193,92274689,
          192937985,402653185,838860801,1744830465,
          3623878657,7516192769]

  @seq.sample(10).each do |n|
    it "returns true for Cullen number #{n}" do
      n.should be_cullen
    end
  end

  @seq.to_seq.invert.sample(10).each do |n|
    it "returns false for non-Cullen number #{n}" do
      n.should_not be_cullen
    end
  end
end
