describe Integer, "#aspiring?" do
  ASPIRING = [25,95,119,143,417,445,565,608,650,652,675,685]

  ASPIRING.each do |n|
    it "should return true for aspiring number #{n}" do
      n.should be_aspiring
    end
  end

  [24,96,142,409,500].each do |n|
    it "returns false for non-aspiring number #{n}" do
      n.should_not be_aspiring
    end
  end
end
