# coding: utf-8
# A007588
STELLA_OCTANGULA = [0,1,14,51,124,245,426,679,1016,1449,1990,2651,
                    3444,4381,5474,6735,8176,9809,11646,13699,15980,
                    18501,21274,24311,27624,31225,35126,39339,43876,
                    48749,53970,59551,65504,71841,78574,85715,93276,
                    101269]

describe Integer, "#stella_octangula" do
  STELLA_OCTANGULA.each_with_index do |o,n|
    it "returns #{o} as the #{n}#{n.ordinal} stella octangula number" do
      n.stella_octangula.should == o
    end
  end
end

describe Integer, "#stella_octangula?" do
  STELLA_OCTANGULA.each do |n|
    it "returns true for stella octangula number #{n}" do
      n.should be_stella_octangula
    end
  end

  STELLA_OCTANGULA.to_seq.invert.sample(100).each do |n|
    it "returns false for non-stella-octangula number #{n}" do
      n.should_not be_stella_octangula
    end
  end
end
