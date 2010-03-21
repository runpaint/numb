describe Integer, "#vampire?" do
  #A014575
  @seq = [1260,1395,1435,1530,1827,2187,6880,102510,104260,
          105210,105264,105750,108135,110758,115672,116725,
          117067,118440,120600,123354,124483,125248,125433,
          125460,125500,126027,126846,129640]
  
  @seq.each do |n|
    it "returns true for vampire number #{n}" do
      n.should be_vampire 
    end
  end
  
  @seq.to_seq.invert.sample(10).each do |n|
    it "returns false for non-vampire number #{n}" do
      n.should_not be_vampire 
    end
  end
end
