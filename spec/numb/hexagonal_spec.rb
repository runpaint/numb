describe Integer, "#hexagonal?" do
  # A000384
  @seq = [0,1,6,15,28,45,66,91,120,153,190,231,276,325,378,
          435,496,561,630,703,780,861,946,1035,1128,1225,
          1326,1431,1540,1653,1770,1891,2016,2145,2278,2415,
          2556,2701,2850,3003,3160,3321,3486,3655,3828,4005,
          4186,4371,4560].to_seq

  @seq.each do |n|
    it "returns true for hexagonal number #{n}" do
      n.should be_hexagonal
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-hexagonal number #{n}" do
      n.should_not be_hexagonal
    end
  end
end
