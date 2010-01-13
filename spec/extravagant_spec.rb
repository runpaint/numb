describe Integer, "#extravagant?" do
  # A046760
  @seq = [4,6,8,9,12,18,20,22,24,26,28,30,33,34,36,38,39,
          40,42,44,45,46,48,50,51,52,54,55,56,57,58,60,62,
          63,65,66,68,69,70,72,74,75,76,77,78,80,82,84,85,
          86,87,88,90,91,92,93,94,95,96,98,99,100,102,104,
          108,110,114].to_seq
  
  @seq.each do |n|
    it "returns true for extravagant number #{n}" do
      n.should be_extravagant
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-extravagant number #{n}" do
      n.should_not be_extravagant
    end
  end
end
