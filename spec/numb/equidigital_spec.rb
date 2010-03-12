describe Integer, "#equidigital?" do
  # A046758
  @seq = [1,2,3,5,7,10,11,13,14,15,16,17,19,21,23,25,27,29,
          31,32,35,37,41,43,47,49,53,59,61,64,67,71,73,79,
          81,83,89,97,101,103,105,106,107,109,111,112,113,
          115,118,119,121,122,123,127,129,131,133,134,135,
          137,139].to_seq

  @seq.each do |n|
    it "returns true for equidigital number #{n}" do
      n.should be_equidigital
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-equidigital number #{n}" do
      n.should_not be_equidigital
    end
  end

  [193, 197, 199].each do |n|
    it "returns true for prime number #{n}" do
      n.should be_equidigital
    end
  end
end

