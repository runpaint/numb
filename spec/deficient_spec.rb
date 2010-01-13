describe Integer, "#deficient?" do
  # A005100
  @seq = [1,2,3,4,5,7,8,9,10,11,13,14,15,16,17,19,21,22,23,
          25,26,27,29,31,32,33,34,35,37,38,39,41,43,44,45,
          46,47,49,50,51,52,53,55,57,58,59,61,62,63,64,65,
          67,68,69,71,73,74,75,76,77,79,81,82,83,85,86].to_seq

  @seq.each do |n|
    it "should return true for deficient number #{n}" do
      n.should be_deficient
    end

    it "should return false for negative deficient number #{-n}" do
      (-n).should_not be_deficient
    end
  end

  @seq.invert.sample(10).each do |n|
    it "should return false for non-deficient number #{n}" do
      n.should_not be_deficient
    end
  end
end
