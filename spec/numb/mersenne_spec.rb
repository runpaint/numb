# coding: utf-8
describe Integer, "#mersenne?" do
  # A000225
  @seq = [0,1,3,7,15,31,63,127,255,511,1023,2047,4095,8191,
          16383,32767,65535,131071,262143,524287,1048575,
          2097151,4194303,8388607,16777215,33554431,
          67108863,134217727,268435455,536870911,1073741823,
          2147483647,4294967295]

  @seq.each do |n|
    it "returns true for Mersenne number #{n}" do
      n.should be_mersenne
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-Mersenne number #{n}" do
      n.should_not be_mersenne
    end
  end
end
