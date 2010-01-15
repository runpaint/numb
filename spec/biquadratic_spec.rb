describe Integer, "#biquadratic?" do
  # A000583
  @seq = [0,1,16,81,256,625,1296,2401,4096,6561,10000,
          14641,20736,28561,38416,50625,65536,83521,104976,
          130321,160000,194481,234256,279841,331776,390625,
          456976,531441,614656,707281,810000,923521,1048576,
          1185921].to_seq

  @seq.each do |n|
    it "should return true for biquadratic number #{n}" do
      n.should be_biquadratic
    end
  end

  @seq.invert.sample(10).each do |n|
    it "should return false for non-biquadratic number #{n}" do
      n.should_not be_biquadratic
    end
  end
end
