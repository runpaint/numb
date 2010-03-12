describe Integer, "#evil?" do
  # A001969
  @seq = [0,3,5,6,9,10,12,15,17,18,20,23,24,27,29,30,33,34,
          36,39,40,43,45,46,48,51,53,54,57,58,60,63,65,66,
          68,71,72,75,77,78,80,83,85,86,89,90,92,95,96,99,
          101,102,105,106,108,111,113,114,116,119,120,123,
          125,126,129].to_seq

  @seq.each do |n|
    it "should return true for evil number #{n}" do
      n.should be_evil
    end
  end

  @seq.invert.each do |n|
    it "should return false for non-evil number #{n}" do
      n.should_not be_evil
    end
  end
end
