# coding: utf-8
# A001003 
SUPER_CATALAN = [1,1,3,11,45,197,903,4279,20793,103049,518859,
                 2646723,13648869,71039373,372693519,1968801519,
                 10463578353,55909013009,300159426963,
                 1618362158587,8759309660445,47574827600981,
                 259215937709463,1416461675464871]

describe Integer, "#super_catalan" do
  SUPER_CATALAN.to_enum.with_index(1).each do |s, n|
    it "returns #{s} as the #{n}#{n.ordinal} super-Catalan number" do
      n.super_catalan.should == s
    end
  end
end

describe Integer, "#super_catalan?" do
  SUPER_CATALAN.each do |n|
    it "returns true for super-Catalan number #{n}" do
      n.should be_super_catalan
    end
  end

  SUPER_CATALAN.to_seq.invert.sample(100).each do |n|
    it "returns false for non-super-Catalan number #{n}" do
      n.should_not be_super_catalan
    end
  end
end
