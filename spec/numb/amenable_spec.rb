describe Integer, "#amenable?" do
  # A100832
  @seq = [1,5,8,9,12,13,16,17,20,21,24,25,28,29,32,33,36,
          37,40,41,44,45,48,49,52,53,56,57,60,61,64,65,68,
          69,72,73,76,77,80,81,84,85,88,89,92,93,96,97,100,
          101,104,105,108,109,112,113,116,117,120,121,124,
          125,128,129,132]

  @seq.each do |n|
    it "returns true for amenable number #{n}" do
      n.should be_amenable
    end
  end

  @seq.to_seq.invert.each do |n|
    it "returns false for non-amenable number #{n}" do
      n.should_not be_amenable
    end
  end
end
