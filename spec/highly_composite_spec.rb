describe Integer, "#highly_composite?" do
  # A002182
  @seq = [1,2,4,6,12,24,36,48,60,120,180,240,360,720,840,
          1260,1680,2520,5040,7560,10080,15120,20160,25200,
          27720,45360,50400,55440,83160,110880,166320,
          221760,277200,332640,498960,554400,665280,720720,
          1081080,1441440,2162160].to_seq

  @seq.first(20).sample(5).each do |n|
    it "should return true for highly composite integer #{n}" do
      n.should be_highly_composite
    end
  end

  @seq.invert.sample(10).each do |n|
    it "should return false for non-highly composite integer #{n}" do
      n.should_not be_highly_composite
    end
  end
end
