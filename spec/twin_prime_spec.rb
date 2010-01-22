describe Integer, "#twin_prime?" do
  # A001359, A006512
  @seq = [3,5,11,17,29,41,59,71,101,107,137,149,179,191,
          197,227,239,269,281,311,347,419,431,461,521,569,
          599,617,641,659,809,821,827,857,881,1019,1031,
          1049,1061,1091,1151,1229,1277,1289,1301,1319,1427,
          1451,1481,1487,1607].zip(
         [5,7,13,19,31,43,61,73,103,109,139,151,181,193,
          199,229,241,271,283,313,349,421,433,463,523,571,
          601,619,643,661,811,823,829,859,883,1021,1033,
          1051,1063,1093,1153,1231,1279,1291,1303,1321,1429,
          1453,1483,1489,1609])

  @seq.each do |p, q|
    it "should return true for twin-primes #{p} and #{q}" do
      p.twin_prime?(q).should be_true
    end
  end

  it "returns false for two primes which are not twin" do
    2.twin_prime?(29).should be_false
  end

  it "returns false for a prime and a composite" do
    17.twin_prime?(20).should be_false
  end

  it "returns false for two composites with a difference of two" do
    20.twin_prime?(22).should be_false
  end
end
