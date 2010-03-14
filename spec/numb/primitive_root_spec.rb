describe Integer, "#primitive_root?" do
  # A033948
  @seq = [1,2,3,4,5,6,7,9,10,11,13,14,17,18,19,22,23,25,26,
          27,29,31,34,37,38,41,43,46,47,49,50,53,54,58,59,61,62,
          67,71,73,74,79,81,82,83,86,89,94,97,98,101,103,106,107,
          109,113,118,121,122,125,127,131,134,137,139]

  @seq.sample(10).each do |n|
    it "returns true for #{n} which has a primitive root" do
      n.should be_primitive_root
    end
  end

  @seq.to_seq.invert.sample(10).each do |n|
    it "returns false for #{n} which doesn't have a primitive root" do
      n.should_not be_primitive_root
    end
  end
end

describe Integer, "#primitive_root? (with argument)" do
  # A046145
  @seq = [0,0,1,2,3,2,5,3,0,2,3,2,0,2,3,0,0,3,5,2,0,0,7,5,
          0,2,7,2,0,2,0,3,0,0,3,0,0,2,3,0,0,6,0,3,0,0,5,5,0,
          3,3,0,0,2,5,0,0,0,3,2,0,2,3,0,0,0,0,2,0,0,0,7,0,5,
          5,0,0,0,0,3,0,2,7,2,0,0,3,0,0,3,0,0,0,0,5,0,0,5,3,
          0,0]

  @seq.each_with_index.to_a.sample(5).each do |root,n|
    next if root.zero?
    (1...root).each do |non_root|
      it "returns false for #{n} when given a root of #{non_root}" do
        n.should_not be_primitive_root(non_root)
      end
    end

    it "returns true for #{n} when given a root of #{root}" do
      n.should be_primitive_root(root)
    end
  end

  # A001122
  [3,5,11,13,19,29,37,53,59,61,67,83,101,107,131,
   139,149,163,173,179,181,197,211,227,269,293,317,
   347,349,373,379,389,419,421,443,461,467,491,509,
   523,541,547,557,563,587,613,619,653,659,661,677,
   701,709,757,773,787,797].sample(5).each do |n|

    it "returns true for #{n} when given a root of 2" do
      n.should be_primitive_root(2)
    end
  end
  
  [71,239,241,359,431,499,599,601,919,997,1051,1181,
   1249,1439,1609,1753,2039,2089,2111,2179,2251,2281,
   2341,2591,2593,2671,2711,2879,3119,3121,3169,3181,
   3457,3511,3541,3719,3739,3769,4271,4513,4799,4801,
   4943,5197].first(10).sample(5).each do |n|
    (1...7).to_a.sample(1).each do |root|
      
      it "returns false for #{n} when given a root of #{root}" do
        n.should_not be_primitive_root(root)
      end
    end

    it "returns true for #{n} when given a root of 7" do
      n.should be_primitive_root(7)
    end
  end
  
  it "returns true when asked whether 0 is a primitive root of unity" do
    1.should be_primitive_root(0)
  end
end
