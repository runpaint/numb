describe Integer, "#nivenmorphic?" do
  # A075154
  @seq = [1,2,3,4,5,6,7,8,9,910,0,912,11713,6314,915,3616,
          15317,918,17119,9920,18921,9922,82823,19824,9925,
          46826,18927,18928,78329,99930,585931,388832,
          1098933,198934,289835,99936,99937,478838,198939,
          1999840].to_seq

  @seq.sample(10).each do |n|
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
