describe Integer, "#oban?" do
  # A008521
  @seq = [3,5,6,7,8,9,10,11,12,13,15,16,17,18,19,20,23,25,
          26,27,28,29,30,33,35,36,37,38,39,50,53,55,56,57,
          58,59,60,63,65,66,67,68,69,70,73,75,76,77,78,79,
          80,83,85,86,87,88,89,90,93,95,96,97,98,99,300,303,
          305,306,307]

  @seq.each do |n|
    it "returns true for oban number #{n}" do
      n.should be_oban
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-oban number #{n}" do
      n.should_not be_oban
    end
  end
end
