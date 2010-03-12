describe Integer, "#nonhypotenuse" do
  # A004144
  @seq = [1,2,3,4,6,7,8,9,11,12,14,16,18,19,21,22,23,24,27,
          28,31,32,33,36,38,42,43,44,46,47,48,49,54,56,57,
          59,62,63,64,66,67,69,71,72,76,77,79,81,83,84,86,
          88,92,93,94,96,98,99,103,107,108,112,114,118,121,
          124,126,127]

  @seq.each do |n|
    it "should return true for nonhypotenuse number #{n}" do
      n.should be_nonhypotenuse
    end
  end

  @seq.to_seq.invert.each do |n|
    it "should return false for nonhypotenuse number #{n}" do
      n.should_not be_nonhypotenuse
    end
  end
end
