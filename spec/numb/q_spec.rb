# coding: utf-8
# A005185
Q = [1,1,2,3,3,4,5,5,6,6,6,8,8,8,10,9,10,11,11,12,12,
     12,12,16,14,14,16,16,16,16,20,17,17,20,21,19,20,
     22,21,22,23,23,24,24,24,24,24,32,24,25,30,28,26,
     30,30,28,32,30,32,32,32,32,40,33,31,38,35,33,39,
     40,37,38,40,39]

describe Integer, "#q" do
  Q.to_enum.with_index(1).each do |q, n|
    it "returns #{q} for #{n}" do
      n.q.should == q
    end
  end
end

describe Integer, "#q?" do
  Q.each do |n|
    it "returns true for Q-number #{n}" do
      n.should be_q
    end
  end

  Q.to_seq.invert.each do |n|
    it "returns false for non-Q-number #{n}" do
      n.should_not be_q
    end
  end
end
