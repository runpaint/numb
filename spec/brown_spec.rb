describe Integer, "#brown?" do
  # A163524
  @seq = [5,4,11,5,71,7]

  @seq.each_slice(2) do |n, m|
    it "should return true for Brown pair (#{n}, #{m})" do
      n.brown?(m).should be_true
    end

    it "should return false for inverted, non-Brown pair (#{m}, #{n})" do
      m.brown?(n).should be_false
    end
  end

  @seq.to_seq.invert.sample(10).each_slice(2) do |n, m|
    it "should return false for non-Brown pair (#{n}, #{m})" do
      n.brown?(m).should be_false
    end
  end
end
