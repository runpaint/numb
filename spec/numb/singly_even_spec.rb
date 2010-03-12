describe Integer, "#singly_even?" do
  # A016825
  @seq = [2,6,10,14,18,22,26,30,34,38,42,46,50,54,58,62,66,
          70,74,78,82,86,90,94,98,102,106,110,114,118,122,
          126,130,134,138,142,146,150,154,158,162,166,170,
          174,178,182,186,190,194,198,202,206,210,214,218,
          222,226,230,234]

  @seq.each do |n|
    it "returns true for singly-even number #{n}" do
      n.should be_singly_even
    end
  end

  @seq.to_seq.invert.each do |n|
    it "returns false for non-singly-even number #{n}" do
      n.should_not be_singly_even
    end
  end
end
