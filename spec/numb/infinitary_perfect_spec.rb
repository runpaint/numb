# coding: utf-8
describe Integer, "#infinitary_perfect?" do
  # A007357
  @seq = [6,60,90,36720,12646368,22276800,126463680,
          4201148160,28770487200,287704872000,1446875426304,
          2548696550400,14468754263040,590325173932032,
          3291641594841600,8854877608980480,
          32916415948416000].first(7)

  @seq.each do |n|
    it "returns true for infinitary perfect number #{n}" do
      n.should be_infinitary_perfect
    end
  end

  @seq.to_seq.invert.sample(7).each do |n|
    it "returns false for non-infinitary perfect number #{n}" do
      n.should_not be_infinitary_perfect
    end
  end
end
