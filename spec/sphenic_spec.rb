describe Integer, "#sphenic?" do
  # http://www.research.att.com/~njas/sequences/A007304
  SPHENIC = [30,42,66,70,78,102,105,110,114,130,138,154,165,
             170,174,182,186,190,195,222,230,231,238,246,255,
             258,266,273,282,285,286,290,310,318,322,345,354,
             357,366,370,374,385,399,402,406,410,418,426,429,
             430,434,435,438]

  it "returns true for sphenic numbers" do
    SPHENIC.each do |number|
      number.should be_sphenic
    end
  end

  it "returns false for non-sphenic numbers" do
    ((1..438).to_a - SPHENIC).each do |number|
      number.should_not be_sphenic
    end
  end
end
