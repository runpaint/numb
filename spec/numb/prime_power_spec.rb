# coding: utf-8
describe Integer, "#prime_power?" do
  @seq = {
    # A000961
    0 => [1,2,3,4,5,7,8,9,11,13,16,17,19,23,25,27,29,31,32,
          37,41,43,47,49,53,59,61,64,67,71,73,79,81,83,89,
          97,101,103,107,109,113,121,125,127,128,131,137,
          139,149,151,157,163,167,169,173,179,181,191,193,
          197,199,211,223,227],
    # A000040
    1 => [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,
          61,67,71,73,79,83,89,97,101,103,107,109,113,127,
          131,137,139,149,151,157,163,167,173,179,181,191,
          193,197,199,211,223,227,229,233,239,241,251,257,
          263,269,271],
    # A001248      
    2 => [4,9,25,49,121,169,289,361,529,841,961,1369,1681,
          1849,2209,2809,3481,3721,4489,5041,5329,6241,6889,
          7921,9409,10201,10609,11449,11881,12769,16129,
          17161,18769,19321,22201],
    # A030078
    3 => [8,27,125,343,1331,2197,4913,6859,12167,24389,
          29791,50653,68921,79507,103823,148877,205379,
          226981,300763,357911,389017,493039,571787,704969,
          912673,1030301,1092727,1225043,1295029,1442897],
    # A030514          
    4 => [16,81,625,2401,14641,28561,83521,130321,279841,
          707281,923521,1874161,2825761,3418801,4879681,
          7890481,12117361,13845841,20151121,25411681,
          28398241,38950081,47458321,62742241,88529281,
          104060401],
    5 => [32,243,3125,16807,161051,371293,1419857,2476099,
          6436343,20511149,28629151,69343957,115856201,
          147008443,229345007,418195493,714924299,844596301,
          1350125107,1804229351,2073071593,3077056399,
          3939040643],
  }

  @seq[0].each do |n|
    it "returns true for prime-power #{n}" do
      n.should be_prime_power
    end
  end

  @seq[0].to_seq.invert.sample(10).each do |n|
    it "returns false for non-prime-power #{n}" do
      n.should_not be_prime_power
    end
  end

  @seq.each do |k, values|
    next if k.zero?

    values.each do |n|
      it "returns true for #{k}#{k.ordinal}-prime-power #{n}" do
        n.should be_prime_power(k)
      end
    end

    values.to_seq.invert.sample(10).each do |n|
      it "returns false for non-#{k}#{k.ordinal}-prime-power #{n}" do
        n.should_not be_prime_power(k)
      end
    end
  end
end
