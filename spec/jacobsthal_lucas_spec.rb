describe Integer, "#jacobsthal_lucas?" do
  # A014551
  JL = [2,1,5,7,17,31,65,127,257,511,1025,2047,4097,8191,
        16385,32767,65537,131071,262145,524287,1048577,
        2097151,4194305,8388607,16777217,33554431,
        67108865,134217727,268435457,536870911,1073741825,
        2147483647]

  JL.each do |n|
    it "should return true for Jacobsthal-Lucas number #{n}" do
      n.should be_jacobsthal_lucas
    end
  end

  20.times do
    n = Random.new.rand(1..JL.last)
    redo if JL.include?(n)
    it "should return false for non-Jacobsthal-Lucas number #{n}" do
      n.should_not be_jacobsthal_lucas
    end
  end
end
