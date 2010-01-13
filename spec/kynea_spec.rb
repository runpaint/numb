describe Integer, "#kynea?" do
  # A093069
  @seq = [7,23,79,287,1087,4223,16639,66047,263167,1050623,
          4198399,16785407,67125247,268468223,1073807359,
          4295098367,17180131327,68720001023,274878955519,
          1099513724927,4398050705407,17592194433023].to_seq

  @seq.each do |n|
    it "returns true for Kynea number #{n}" do
      n.should be_kynea
    end
  end

  @seq.invert.sample(3).each do |n|
    it "returns false for non-Kynea number #{n}" do
      n.should_not be_kynea
    end
  end
end
