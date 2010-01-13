describe Integer, "#aspiring?" do
  # A063769
  @seq = [25,95,119,143,417,445,565,608,650,652,675,685].to_seq

  @seq.each do |n|
    it "should return true for aspiring number #{n}" do
      n.should be_aspiring
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-aspiring number #{n}" do
      n.should_not be_aspiring
    end
  end
end
