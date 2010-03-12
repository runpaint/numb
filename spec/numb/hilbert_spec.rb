describe Integer, "#hilbert?" do
  @seq = [1,5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,
          69,73,77,81,85,89,93,97,101,105,109,113,117,121,
          125,129,133,137,141,145,149,153,157,161,165,169,
          173,177,181,185,189].to_seq

  @seq.each do |n|
    it "returns true for Hilbert number #{n}" do
      n.should be_hilbert
    end

    it "returns false for negative Hilbert number #{-n}" do
      (-n).should_not be_hilbert
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-Hilbert number #{n}" do
      n.should_not be_hilbert
    end
  end
end

