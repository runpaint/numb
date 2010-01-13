describe Integer, "#almost_perfect?" do
  # A000079
  @seq = [1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,
          16384,32768,65536,131072,262144,524288,1048576,
          2097152,4194304,8388608,16777216,33554432,
          67108864,134217728,268435456,536870912,1073741824,
          2147483648,4294967296,8589934592].to_seq

  @seq.sample(3).each do |n|
    it "should return true for almost perfect number #{n}" do
      n.should be_almost_perfect
    end
  end

  @seq.invert.sample(3).each do |n|
    it "should return false for non-almost-perfect number #{n}" do
      n.should_not be_almost_perfect
    end
  end
end
