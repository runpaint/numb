describe Integer, "#uban?" do
  # A089590 
  @seq = [1,2,3,5,6,7,8,9,10,11,12,13,15,16,17,18,19,20,21,
          22,23,25,26,27,28,29,30,31,32,33,35,36,37,38,39,
          40,41,42,43,45,46,47,48,49,50,51,52,53,55,56,57,
          58,59,60,61,62,63,65,66,67,68,69,70,71,72,73,75,
          76,77,78,79]

  @seq.each do |n|
    it "returns true for uban number #{n}" do
      n.should be_uban
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-uban number #{n}" do
      n.should_not be_uban
    end
  end
end
