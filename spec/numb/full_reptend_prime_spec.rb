describe Integer, "#full_reptend_prime?" do
  # A001913 
  @seq = [7,17,19,23,29,47,59,61,97,109,113,131,149,167,
          179,181,193,223,229,233,257,263,269,313,337,367,
          379,383,389,419,433,461,487,491,499,503,509,541,
          571,577,593,619,647,659,701,709,727,743,811,821,
          823,857,863,887,937,941]

  @seq.each do |n|
    it "returns true for full-reptend prime #{n}" do
      n.should be_full_reptend_prime
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-full-reptend-prime #{n}" do
      n.should_not be_full_reptend_prime
    end
  end
end
