describe Integer, "#abundant?" do
  # A005101
  @seq = [12,18,20,24,30,36,40,42,48,54,56,60,66,70,72,78,
          80,84,88,90,96,100,102,104,108,112,114,120,126,
          132,138,140,144,150,156,160,162,168,174,176,180,
          186,192,196,198,200,204,208,210,216,220,222,224,
          228,234,240,246,252,258,260,264,270].to_seq

  @seq.each do |n|
    it "returns true for abundant number #{n}" do
      n.should be_abundant
    end

    it "returns false for negative number #{-n}" do
      (-n).should_not be_abundant
    end
  end

  @seq.invert.each do |n|
    it "returns false for non-abundant number #{n}" do
      n.should_not be_abundant
    end
  end
end
