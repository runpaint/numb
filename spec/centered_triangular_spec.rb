describe Integer, "#centered_triangular?" do
  # A005448
  @seq = [1,4,10,19,31,46,64,85,109,136,166,199,235,274,
          316,361,409,460,514,571,631,694,760,829,901,976,
          1054,1135,1219,1306,1396,1489,1585,1684,1786,1891,
          1999,2110,2224,2341,2461,2584,2710,2839,2971,3106,
          3244,3385,3529].to_seq

  @seq.each do |n|
    it "returns true for centered triangular number #{n}" do
      n.should be_centered_triangular
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-centered-triangular number #{n}" do
      n.should_not be_centered_triangular
    end
  end
end
