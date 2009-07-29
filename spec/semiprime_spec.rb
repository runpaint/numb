describe Integer, "#semiprime?" do
  # http://www.research.att.com/~njas/sequences/A001358
  SEMI_PRIME = [4,6,9,10,14,15,21,22,25,26,33,34,35,38,39,46,49,
                51,55,57,58,62,65,69,74,77,82,85,86,87,91,93,94,
                95,106,111,115,118,119,121,122,123,129,133,134,
                141,142,143,145,146,155,158,159,161,166,169,177,
                178,183,185,187]

  it "returns true for semi-prime numbers" do
    SEMI_PRIME.each do |number|
      number.should be_semiprime
    end
  end

  it "returns false for non-semi-prime numbers" do
    ((1..187).to_a - SEMI_PRIME).each do |number|
      number.should_not be_semiprime
    end
  end
end

