# coding: utf-8
# A007448
KNUTH = [1,3,3,4,7,7,7,9,9,10,13,13,13,15,15,19,19,19,19,
         21,21,22,27,27,27,27,27,28,31,31,31,39,39,39,39,
         39,39,39,39,40,43,43,43,45,45,46,55,55,55,55,55,
         55,55,55,55,57,57,58,63,63,63,63,63,64,67,67,67,
         79,79,79,79]

describe Integer, "#knuth?" do
  KNUTH.uniq.each do |n|
    it "returns true for Knuth number #{n}" do
      n.should be_knuth
    end
  end

  KNUTH.uniq.to_seq.invert.sample(10).each do |n|
    it "returns false for non-Knuth number #{n}" do
      n.should_not be_knuth
    end
  end
end

describe Integer, "#knuth" do
  KNUTH.each_with_index do |k, n|
    it "returns #{k} as the #{n}#{n.ordinal} Knuth number" do
      n.knuth.should == k
    end
  end
end
