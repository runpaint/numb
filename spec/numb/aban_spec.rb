describe Integer, "#aban?" do
  @seq = [*(1..999), *(1_000_000..1_000_999)]

  @seq.sample(100).each do |n|
    it "returns true for aban number #{n}" do
      n.should be_aban
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-aban number #{n}" do
      n.should_not be_aban
    end
  end
end
