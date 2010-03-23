describe Integer, "#minimal?" do
  # A007416
  @seq = [1,2,4,6,12,16,24,36,48,60,64,120,144,180,192,240,
          360,576,720,840,900,960,1024,1260,1296,1680,2520,
          2880,3072,3600,4096,5040,5184,6300,6480,6720,7560,
          9216,10080].to_seq

  @seq.first(25).each do |n|
    it "should return true for minimal number #{n}" do
      n.should be_minimal
    end
  end

  @seq.invert.sample(10).each do |n|
    it "should return false for non-minimal number #{n}" do
      n.should_not be_minimal
    end
  end
end
