describe Integer, "#unusual?" do
  # A064052
  @seq = [2,3,5,6,7,10,11,13,14,15,17,19,20,21,22,23,26,28,
          29,31,33,34,35,37,38,39,41,42,43,44,46,47,51,52,
          53,55,57,58,59,61,62,65,66,67,68,69,71,73,74,76,
          77,78,79,82,83,85,86,87,88,89,91,92,93,94,95,97,
          99,101,102]

  @seq.each do |n|
    it "returns true for unusual number #{n}" do
      n.should be_unusual
    end
  end

  @seq.to_seq.invert.each do |n|
    it "returns false for non-unusual number #{n}" do
      n.should_not be_unusual
    end
  end
end
