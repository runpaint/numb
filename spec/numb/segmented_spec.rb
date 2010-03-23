# coding: utf-8
# A002048 
SEGMENTED = [1,2,4,5,8,10,14,15,16,21,22,25,26,28,33,34,35,36,
             38,40,42,46,48,49,50,53,57,60,62,64,65,70,77,80,
             81,83,85,86,90,91,92,100,104,107,108,116,119,124,
             127,132,133,137,141,144,145,148,150,151,154,158,
            159,163,165]

describe Integer, "#segmented" do
  SEGMENTED.to_enum.with_index(1).each do |s, n|
    it "returns #{s} as the #{n}#{n.ordinal} segmented number" do
      n.segmented.should == s
    end
  end
end

describe Integer, "#segmented?" do
  SEGMENTED.each do |n|
    it "returns true for segmented number #{n}" do
      n.should be_segmented
    end
  end

  SEGMENTED.to_seq.invert.sample(20).each do |n|
    it "returns false for non-segmented number #{n}" do
      n.should_not be_segmented
    end
  end
end
