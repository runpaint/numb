describe Integer, "#hilbert?" do
  HILBERT = [1,5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,
             69,73,77,81,85,89,93,97,101,105,109,113,117,121,
             125,129,133,137,141,145,149,153,157,161,165,169,
             173,177,181,185,189]
  it "returns true for a Hilbert number" do
    HILBERT.each do |number|
      number.should be_hilbert
    end
  end

  it "returns false for a non-Hilbert number" do
    ((1..188).to_a - HILBERT).each do |number|
      number.should_not be_hilbert
    end
  end

  it "returns false for a negative number" do
    (1..189).each do |number|
      (-number).should_not be_hilbert
    end
  end
end

