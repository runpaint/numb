describe Integer, "emrip?" do
  # A006567
  @seq = [13,17,31,37,71,73,79,97,107,113,149,157,167,179,
          199,311,337,347,359,389,701,709,733,739,743,751,
          761,769,907,937,941,953,967,971,983,991,1009,1021,
          1031,1033,1061,1069,1091,1097,1103,1109,1151,1153,
          1181,1193].to_seq

  @seq.each do |n|
    it "returns true for emrip #{n}" do
      n.should be_emrip
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-emrip #{n}" do
      n.should_not be_emrip
    end
  end

  it "returns false for palindromic primes" do
    [11,151].each do |number|
      number.should_not be_emrip
    end
  end
end
