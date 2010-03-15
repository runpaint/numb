describe Integer, "#carmichael?" do
  # A002997
  @seq = [561,1105,1729,2465,2821,6601,8911,10585,15841,
          29341,41041,46657,52633,62745,63973,75361,101101,
          115921,126217,162401,172081,188461,252601,278545,
          294409,314821,334153,340561,399001,410041,449065,
          488881,512461].to_seq

  @seq.each do |n|
    it "returns true for Carmichael number #{n}" do
      n.should be_carmichael
    end
  end

  @seq.invert.sample(10).each do |n| 
    it "returns false for non-Carmichael number #{n}" do
      n.should_not be_carmichael
    end
  end
end

describe Integer, "#carmichael" do
  # A002322 
  @seq = [1,1,2,2,4,2,6,2,6,4,10,2,12,6,4,4,16,6,18,4,6,10,
          22,2,20,12,18,6,28,4,30,8,10,16,12,6,36,18,12,4,
          40,6,42,10,12,22,46,4,42,20,16,12,52,18,20,6,18,
          28,58,4,60,30,6,16,12,10,66,16,22,12,70,6,72,36,
          20,18,30,12,78,4,54]

  @seq.to_enum.with_index(1).each do |c,n|
    it "returns #{c} for #{n}" do
      n.carmichael.should == c
    end
  end
end
