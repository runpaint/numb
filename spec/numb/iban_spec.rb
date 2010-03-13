describe Integer, "#iban?" do
  # A089589
  @seq = [0,1,2,3,4,7,10,11,12,14,17,20,21,22,23,24,27,40,
          41,42,43,44,47,70,71,72,73,74,77,100,101,102,103,
          104,107,110,111,112,114,117,120,121,122,123,124,
          127,140,141,142,143,144,147,170,171,172,173,174,
          177,200,201]

  @seq.each do |n|
    it "returns true for iban number #{n}" do
      n.should be_iban
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-iban number #{n}" do
      n.should_not be_iban
    end
  end
end
