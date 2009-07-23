describe Integer, "#dudeney?" do
  it "returns true for Dudeney numbers" do
    # http://www.research.att.com/~njas/sequences/A061209
    [1, 512, 4913, 5832, 17576, 19683].each do |number|
      number.should be_dudeney
    end
  end

  it "returns false for non-Dudeney numbers" do
    [2, 511, 444444, 196833, 373627919182666355532718191].each do |number|
      number.should_not be_dudeney
    end
  end
end
