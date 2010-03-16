# coding: utf-8
describe Integer, "#e_perfect?" do
  # A054979
  @seq = [36,180,252,396,468,612,684,828,1044,1116,1260,
          1332,1476,1548,1692,1800,1908,1980,2124,2196,2340,
          2412,2556,2628,2700,2772,2844,2988,3060,3204,3276,
          3420,3492,3636,3708,3852,3924,4068,4140,4284,4572,
          4716]
  
  @seq.each do |n|
    it "returns true for e-perfect number #{n}" do
      n.should be_e_perfect
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-e-perfect number #{n}" do
      n.should_not be_e_perfect
    end
  end
end
