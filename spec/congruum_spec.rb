describe Integer, "#congruum?" do
  # A057102
  @seq = [24,96,120,240,336,384,480,720,840,960,1320,1344,
          1536,1920,1944,2016,2184,2520,2880,3360,3696,3840,
          3960,4896,5280,5376,5544,6144,6240,6840,6864,7680,
          7776,8064,8736,9240,9360,9720,10080,10296,10920,
          11520,12144].to_seq

  @seq.each do |n|
    it "should return true for congruum #{n}" do
      n.should be_congruum
    end
  end

  @seq.invert.sample(10).each do |n|
    it "should return false for non-congruum #{n}" do
      n.should_not be_congruum
    end
  end
end
