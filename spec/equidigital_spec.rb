describe Integer, "#equidigital?" do
  # http://www.research.att.com/~njas/sequences/A046758
  EQUIDIGITAL = [1,2,3,5,7,10,11,13,14,15,16,17,19,21,23,25,27,29,
                 31,32,35,37,41,43,47,49,53,59,61,64,67,71,73,79,
                 81,83,89,97,101,103,105,106,107,109,111,112,113,
                 115,118,119,121,122,123,127,129,131,133,134,135,
                 137,139]

  it "returns true for equidigital numbers" do
    EQUIDIGITAL.each do |number|
      number.should be_equidigital
    end
  end

  it "returns true for prime numbers" do
    [193, 197, 199].each do |number|
      number.should be_equidigital
    end
  end

  it "returns false for non-equidigital numbers" do
    ((1..139).to_a - EQUIDIGITAL).each do |number|
      number.should_not be_equidigital
    end
  end
end

