describe Integer, "#safe_prime?" do
  # A005385
  @seq = [5,7,11,23,47,59,83,107,167,179,227,263,347,359,
          383,467,479,503,563,587,719,839,863,887,983,1019,
          1187,1283,1307,1319,1367,1439,1487,1523,1619,1823,
          1907,2027,2039,2063,2099,2207,2447,2459,2579,2819,
          2879,2903]

  @seq.each do |n|
    it "returns true for safe prime #{n}" do
      n.should be_safe_prime
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-safe prime #{n}" do
      n.should_not be_safe_prime
    end
  end
end
