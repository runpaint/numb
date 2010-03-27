# coding: utf-8
describe Integer, "#chen_prime?" do
  # A109611
  @seq = [2,3,5,7,11,13,17,19,23,29,31,37,41,47,53,59,67,
          71,83,89,101,107,109,113,127,131,137,139,149,157,
          167,179,181,191,197,199,211,227,233,239,251,257,
          263,269,281,293,307,311,317,337,347,353,359,379,
          389,401,409]

  @seq.each do |n|
    it "returns true for Chen prime #{n}" do
      n.should be_chen_prime
    end
  end

  @seq.to_seq.invert.each do |n|
    it "returns false for non-Chen prime #{n}" do
      n.should_not be_chen_prime
    end
  end
end
