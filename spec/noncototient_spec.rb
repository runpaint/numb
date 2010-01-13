describe Integer, "#noncototient?" do
  # A005278
  @seq = [10,26,34,50,52,58,86,100,116,122,130,134,146,154,
          170,172,186,202,206,218,222,232,244,260,266,268,
          274,290,292,298,310,326,340,344,346,362,366,372,
          386,394,404,412,436,466,470,474,482,490,518,520].to_seq

  @seq.sample(10).each do |n|
    it "should return true for noncototient number #{n}" do
      n.should be_noncototient
    end
  end

  @seq.invert.sample(10).each do |n|
    it "should return false for cototient number #{n}" do
      n.should_not be_noncototient
    end
  end
end
