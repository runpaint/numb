# coding: utf-8
# A000179
MENAGE = [1,0,0,1,2,13,80,579,4738,43387,439792,4890741,
          59216642,775596313,10927434464,164806435783,
          2649391469058,45226435601207,817056406224416,
          15574618910994665,312400218671253762,
          6577618644576902053]

describe Integer, "#ménage" do
  MENAGE.first(20).each_with_index do |m, n|
    it "returns #{m} for ménage number #{n}" do
      n.ménage.should == m
    end
  end
end

describe Integer, "#ménage" do
  @seq = MENAGE.uniq.first(15)
  
  @seq.each do |n|
    it "returns true for ménage number #{n}" do
      n.should be_ménage
    end
  end

  @seq.to_seq.invert.sample(10).each do |n|
    it "returns false for non-ménage number #{n}" do
      n.should_not be_ménage
    end
  end
end
