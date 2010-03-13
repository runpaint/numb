describe Integer, "#strictly_non_palindromic?" do
  # A016038
  @seq = [0,1,2,3,4,6,11,19,47,53,79,103,137,139,149,163,
          167,179,223,263,269,283,293,311,317,347,359,367,
          389,439,491,563,569,593,607,659,739,827,853,877,
          977,983,997,1019,1049,1061,1187,1213,1237,1367,
          1433,1439,1447,1459]

  @seq.each do |n|
    it "returns true for strictly-non-palindromic number #{n}" do
      n.should be_strictly_non_palindromic
    end
  end

  @seq.to_seq.invert.each do |n|
    it "returns false for non-strictly-non-palindromic number #{n}" do
      n.should_not be_strictly_non_palindromic
    end
  end
end
