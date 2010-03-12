describe Integer, "#doubly_even?" do
  # A008586
  @seq = [0,4,8,12,16,20,24,28,32,36,40,44,48,52,56,60,64,
          68,72,76,80,84,88,92,96,100,104,108,112,116,120,
          124,128,132,136,140,144,148,152,156,160,164,168,
          172,176,180,184]
  
  @seq.each do |n|
    it "returns true for doubly-even number #{n}" do
      n.should be_doubly_even
    end
  end

  @seq.to_seq.invert.each do |n|
    it "returns false for non-doubly-even number #{n}" do
      n.should_not be_doubly_even
    end
  end
end
