# A014551
JACOBSTHAL_LUCAS = [2,1,5,7,17,31,65,127,257,511,1025,2047,4097,8191,
                    16385,32767,65537,131071,262145,524287,1048577,
                    2097151,4194305,8388607,16777217,33554431,
                    67108865,134217727,268435457,536870911,1073741825,
                    2147483647]

describe Integer, "#jacobsthal_lucas?" do
  JACOBSTHAL_LUCAS.each do |n|
    it "returns true for Jacobsthal-Lucas number #{n}" do
      n.should be_jacobsthal_lucas
    end
  end

  JACOBSTHAL_LUCAS.to_seq.invert.sample(10).each do |n|
    it "returns false for non-Jacobsthal-Lucas number #{n}" do
      n.should_not be_jacobsthal_lucas
    end
  end
end

describe Integer, "#jacobsthal_lucas" do
  JACOBSTHAL_LUCAS.each_with_index do |l, n|
    it "returns #{l} for the #{n}#{n.ordinal} Jacobsthal-Lucas number" do
      n.jacobsthal_lucas.should == l
    end
  end
end
