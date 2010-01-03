describe Integer, "#balanced_prime?" do
  BP = [5,53,157,173,211,257,263,373,563,593,607,653,733,
        947,977,1103,1123,1187,1223,1367,1511,1747,1753,
        1907,2287,2417,2677,2903,2963,3307,3313,3637,3733,
        4013,4409,4457,4597,4657,4691,4993,5107,5113,5303,
        5387,5393]

  it "returns true for balanced primes" do
    BP.each{|n| n.should be_balanced_prime}
  end

  it "returns false for integers which are not balanced primes" do
    ([*1..BP.max] - BP).each{|n| n.should_not be_balanced_prime}
  end
end
