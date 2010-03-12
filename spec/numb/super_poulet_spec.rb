describe Integer, "#super_poulet?" do
  # A050217
  @seq = [341,1387,2047,2701,3277,4033,4369,4681,5461,7957,
          8321,10261,13747,14491,15709,18721,19951,23377,
          31417,31609,31621,35333,42799,49141,49981,60701,
          60787,65077,65281,80581,83333,85489,88357,90751]
  
  @seq.each do |n|
    it "returns true for super-Poulet number #{n}" do
      n.should be_super_poulet
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-super-Poulet number #{n}" do
      n.should_not be_super_poulet
    end
  end
end
