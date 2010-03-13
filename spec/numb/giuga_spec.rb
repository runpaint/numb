describe Integer, "#giuga?" do
  # A007850
  @seq = [30,858,1722,66198,2214408306,24423128562,
          432749205173838,14737133470010574,
          550843391309130318,244197000982499715087866346,
          554079914617070801288578559178,
          1910667181420507984555759916338506].first(6)

  @seq.each do |n|
    it "returns true for Giuga number #{n}" do
      n.should be_giuga
    end
  end

  @seq.to_seq.invert.sample(10).each do |n|
    it "returns false for non-Giuga number #{n}" do
      n.should_not be_giuga
    end
  end
end
