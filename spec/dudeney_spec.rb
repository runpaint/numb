describe Integer, "#dudeney?" do
  # A061209
  @seq = [1, 512, 4913, 5832, 17576, 19683].to_seq

  @seq.each do |n|
    it "returns true for Dudeney number #{n}" do
      n.should be_dudeney
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-Dudeney number #{n}" do
      n.should_not be_dudeney
    end
  end
end
