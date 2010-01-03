describe Integer, "#sophie_germain_prime?" do
  SGP = [2,3,5,11,23,29,41,53,83,89,113,131,173,179,191,
         233,239,251,281,293,359,419,431,443,491,509,593,
         641,653,659,683,719,743,761,809,911,953,1013,1019,
         1031,1049,1103,1223,1229,1289,1409,1439,1451,1481,
         1499,1511,1559]
  
  it "returns true for Sophie Germain primes" do
    SGP.each{|n| n.should be_sophie_germain_prime}
  end

  it "returns false for non-Sophie Germain primes" do
    ([*1..SGP.max] - SGP).each{|n| n.should_not be_sophie_germain_prime}
  end
end
