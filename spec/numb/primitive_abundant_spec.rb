# coding: utf-8
describe Integer, "#primitive_abundant?" do
  # A071395
  @seq = [20,70,88,104,272,304,368,464,550,572,650,748,836,
          945,1184,1312,1376,1430,1504,1575,1696,1870,1888,
          1952,2002,2090,2205,2210,2470,2530,2584,2990,3128,
          3190,3230,3410,3465,3496,3770,3944,4030,4070,4095,
          4216,4288]

  @seq.each do |n|
    it "returns true for primitive abundant number #{n}" do
      n.should be_primitive_abundant
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-primitive abundant number #{n}" do
      n.should_not be_primitive_abundant
    end
  end
end
