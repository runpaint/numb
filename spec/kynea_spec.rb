describe Integer, "#kynea?" do
  # http://www.research.att.com/~njas/sequences/A093069
  KYNEA = [7,23,79,287,1087,4223,16639,66047,263167,1050623,
           4198399,16785407,67125247,268468223,1073807359,
           4295098367,17180131327,68720001023,274878955519,
           1099513724927,4398050705407,17592194433023]

  it "returns true for Kynea numbers" do
    KYNEA.each do |number|
      number.should be_kynea
    end
  end

  it "returns false for non-Kynea numbers" do
    ((1..300).to_a - KYNEA).each do |number|
      number.should_not be_kynea
    end
  end
end
