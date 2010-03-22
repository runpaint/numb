# coding: utf-8
# A003154
STAR = [1,13,37,73,121,181,253,337,433,541,661,793,937,
        1093,1261,1441,1633,1837,2053,2281,2521,2773,3037,
        3313,3601,3901,4213,4537,4873,5221,5581,5953,6337,
        6733,7141,7561,7993,8437,8893,9361,9841,10333,
        10837]

describe Integer, "#star" do
  STAR.to_enum.with_index(1).each do |s, n|
    it "returns #{s} as the #{n}#{n.ordinal} star number" do
      n.star.should == s
    end
  end
end

describe Integer, "#star?" do
  STAR.each do |n|
    it "returns true for star number #{n}" do
      n.should be_star
    end
  end

  STAR.to_seq.invert.sample(100).each do |n|
    it "returns false for non-star number #{n}" do
      n.should_not be_star
    end
  end
end
