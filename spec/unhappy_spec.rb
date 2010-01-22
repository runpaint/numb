describe Integer, "#unhappy?" do
  # A031177
  @seq = [2,3,4,5,6,8,9,11,12,14,15,16,17,18,20,21,22,24,
          25,26,27,29,30,33,34,35,36,37,38,39,40,41,42,43,
          45,46,47,48,50,51,52,53,54,55,56,57,58,59,60,61,
          62,63,64,65,66,67,69,71,72,73,74,75,76,77,78,80,
          81,83].to_seq

  @seq.each do |n|
    it "should return true for unhappy number #{n}" do
      n.should be_unhappy
    end
  end

  @seq.invert.each do |n|
    it "should return false for happy number #{n}" do
      n.should_not be_unhappy
    end
  end
end
