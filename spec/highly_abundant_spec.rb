describe Integer, "#highly_abundant?" do
  # A002093
  @seq = [1,2,3,4,6,8,10,12,16,18,20,24,30,36,42,48,60,72,
          84,90,96,108,120,144,168,180,210,216,240,288,300,
          336,360,420,480,504,540,600,630,660,720,840,960,
          1008,1080,1200,1260,1440,1560,1620,1680,1800,1920,
          1980,2100].to_seq

  @seq.each do |n|
    it "should return true for highly abundant number #{n}" do
      n.should be_highly_abundant
    end
  end

  @seq.invert.sample(10).each do |n|
    it "should return false for non-highly-abundant number #{n}" do
      n.should_not be_highly_abundant
    end
  end
end
