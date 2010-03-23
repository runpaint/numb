# coding: utf-8
# A000651
TAKEUCHI = [0, 1, 4, 14, 53, 223, 1034, 5221, 28437, 165859, 1029803, 6772850,
            46983238, 342509396, 2615606677, 20865444825, 173446634597, 
            1499111445237, 13445550920288, 124919896067530, 
            1200320663197275, 11910845573790488]

describe Integer, "#takeuchi" do
  TAKEUCHI.each_with_index do |t, n|
    it "returns #{t} as the #{n}#{n.ordinal} Takeuchi number" do
      n.takeuchi.should == t
    end
  end
end

describe Integer, "#takeuchi?" do
  TAKEUCHI.each do |n|
    it "returns true for Takeuchi number #{n}" do
      n.should be_takeuchi
    end
  end

  TAKEUCHI.to_seq.invert.sample(100).each do |n|
    it "returns false for non-Takeuchi number #{n}" do
      n.should_not be_takeuchi
    end
  end
end
