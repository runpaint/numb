describe Integer, "#composite?" do
  # A002808
  @seq = [4,6,8,9,10,12,14,15,16,18,20,21,22,24,25,26,27,
          28,30,32,33,34,35,36,38,39,40,42,44,45,46,48,49,
          50,51,52,54,55,56,57,58,60,62,63,64,65,66,68,69,
          70,72,74,75,76,77,78,80,81,82,84,85,86,87,88].to_seq
  
  @seq.each do |n|
    it "returns true for composite number #{n}" do
      n.should be_composite
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-composite number #{n}" do
      n.should_not be_composite
    end
  end

  it "returns false for 1" do
    1.should_not be_composite
  end
end
