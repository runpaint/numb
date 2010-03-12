describe Integer, "#nivenmorphic?" do
  # A070938
  @seq = [1,2,3,4,5,6,7,8,9,910,912,915,918,1810,1812,1815,
          1818,2710,2712,2715,2718,3610,3612,3615,3616,3618,
          4510,4512,4515,4518,5410,5412,5415,5418,6310,6312,
          6314,6315,6318,7210,7212,7215,7216,7218,8110,8112,
          8115,8118].to_seq

  @seq.each do |n|
    it "returns true for Nivenmorphic number #{n}" do
      n.should be_nivenmorphic
    end

    next if n.zero?
    it "returns false for negative Nivenmorphic number #{-n}" do
      (-n).should_not be_nivenmorphic
    end
  end

  @seq.invert.sample(10).each do |n|
    next if n.zero?
    it "returns false for non-Nivenmorphic number #{n}" do
      n.should_not be_nivenmorphic
    end

    it "returns false for negative non-Nivenmorphic number #{-n}" do
      (-n).should_not be_nivenmorphic
    end
  end
end
