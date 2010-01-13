describe Integer, "#cube?" do
  # A000578 
  @seq = [0,1,8,27,64,125,216,343,512,729,1000,1331,1728,
          2197,2744,3375,4096,4913,5832,6859,8000,9261,
          10648,12167,13824,15625,17576,19683,21952,24389,
          27000,29791,32768,35937,39304,42875,46656,50653,
          54872,59319,64000].to_seq

  @seq.each do |n|
    it "returns true for perfect cube #{n}" do
      n.should be_cube
    end

    it "returns true for negative perfect cube #{-n}" do
      (-n).should be_cube
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-cube #{n}" do
      n.should_not be_cube
    end

    it "returns false for negative non-cube #{-n}" do
      (-n).should_not be_cube
    end
  end
end
