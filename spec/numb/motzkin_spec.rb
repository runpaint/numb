# coding: utf-8

# A001006
MOTZKIN = [1,1,2,4,9,21,51,127,323,835,2188,5798,15511,
           41835,113634,310572,853467,2356779,6536382,
           18199284,50852019,142547559,400763223,1129760415,
           3192727797,9043402501,25669818476,73007772802,
           208023278209,593742784829].first(15)

describe Integer, "#motzkin" do
  MOTZKIN.each_with_index.each do |m, n|
    it "returns #{m} for Motzkin number #{n}" do
      n.motzkin.should == m
    end
  end
end

describe Integer, "#motzkin?" do
  MOTZKIN.sample(10).each do |n|
    it "returns true for Motzkin number #{n}" do
      n.should be_motzkin
    end
  end

  MOTZKIN.to_seq.invert.sample(10).each do |n|
    it "returns false for non-Motzkin number #{n}" do
      n.should_not be_motzkin
    end
  end
end
