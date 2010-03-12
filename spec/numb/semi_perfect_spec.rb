describe Integer, "#semiperfect?" do
  # A005835
  @seq = [6,12,18,20,24,28,30,36,40,42,48,54,56,60,66,72,
          78,80,84,88,90,96,100,102,104,108,112,114,120,126,
          132,138,140,144,150,156,160,162,168,174,176,180,
          186,192,196,198,200,204,208,210,216,220,222,224,
          228,234,240,246,252,258,260,264].to_seq

  @seq.each do |n|
    it "returns true for semi-perfect number #{n}" do
      n.should be_semiperfect
    end

    it "returns false for negative number #{-n}" do
      (-n).should_not be_semiperfect
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-semi-perfect number #{n}" do
      n.should_not be_semiperfect
    end
  end

  # Guy, R. K. 
  # "Almost Perfect, Quasi-Perfect, Pseudoperfect, Harmonic, Weird, 
  # Multiperfect and Hyperperfect Numbers." 
  # §B2 in Unsolved Problems in Number Theory, 2nd ed. New York: 
  # Springer-Verlag, pp. 45-53, 1994
  it "returns true for 2**m * p (where m >= 1 && p.prime? && (p < 2**(m+1) && p > 2**m)" do
    [[4, 17], [4, 19], [4, 23], [4, 29], [4, 31], 
     [5, 37], [5, 41], [5, 43], [5, 47], [5, 53], [5, 59], [5, 61],
     [6, 67], [6, 71], [6, 73], [6, 79], [6, 83], [6, 89], [6, 97],
     [6, 101],[6, 103],[6, 107],[6, 109],[6, 113],[6, 127]].shuffle.first(10).each do |m,p|
      (2**m * p).should be_semiperfect
    end
  end

  it "handles large input quickly and without raising a RangeError" do
    require 'timeout'
    lambda do 
      Timeout.timeout(5) { 19305.semiperfect? }
    end.should_not raise_error
  end
end
