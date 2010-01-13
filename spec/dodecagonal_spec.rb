describe Integer, "#dodecagonal?" do
  
  # A051624
  @seq = [0,1,12,33,64,105,156,217,288,369,460,561,672,793,
          924,1065,1216,1377,1548,1729,1920,2121,2332,2553,
          2784,3025,3276,3537,3808,4089,4380,4681,4992,5313,
          5644,5985,6336,6697,7068,7449,7840,8241,8652].to_seq

  @seq.sample(10).each do |n|
    it "returns true for dodecagonal number #{n}" do
      n.should be_dodecagonal
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-dodecagonal number #{n}" do
      n.should_not be_dodecagonal
    end
  end
end
