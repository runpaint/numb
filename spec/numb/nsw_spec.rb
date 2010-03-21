# coding: utf-8

# A002315
NSW = [1,7,41,239,1393,8119,47321,275807,1607521,
       9369319,54608393,318281039,1855077841,10812186007,
       63018038201,367296043199,2140758220993,
       12477253282759,72722761475561,423859315570607,
       2470433131948081]

describe Integer, "#nsw" do
  NSW.each_with_index do |nsw, n|
    it "returns #{nsw} as the #{n}#{n.ordinal} NSW number" do
      n.nsw.should == nsw
    end
  end
end

describe Integer, "#nsw?" do
  @seq = NSW.first(7)

  @seq.each do |n|
    it "returns true for NSW number #{n}" do
      n.should be_nsw
    end
  end

  @seq.to_seq.invert.sample(10).each do |n|
    it "returns false for non-NSW number #{n}" do
      n.should_not be_nsw
    end
  end
end
