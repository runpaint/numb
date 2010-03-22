# coding: utf-8
# A005900
OCTAHEDRAL = [0,1,6,19,44,85,146,231,344,489,670,891,1156,1469,
              1834,2255,2736,3281,3894,4579,5340,6181,7106,8119,
              9224,10425,11726,13131,14644,16269,18010,19871,
              21856,23969,26214,28595,31116,33781,36594,39559,
              42680]

describe Integer, "#octahedral" do
  OCTAHEDRAL.each_with_index do |o,n|
    it "returns #{o} as the #{n}#{n.ordinal} octahedral number" do
      n.octahedral.should == o
    end
  end
end

describe Integer, "#octahedral?" do
  OCTAHEDRAL.each do |n|
    it "returns true for octahedral number #{n}" do
      n.should be_octahedral
    end
  end

  OCTAHEDRAL.to_seq.invert.sample(100).each do |n|
    it "returns false for non-octahedral number #{n}" do
      n.should_not be_octahedral
    end
  end
end
