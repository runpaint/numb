# A002477 
DEMLO = [1,121,12321,1234321,123454321,12345654321,
        1234567654321,123456787654321,12345678987654321,
        1234567900987654321,123456790120987654321,
        12345679012320987654321,
        1234567901234320987654321]

describe Integer, "#demlo" do
  DEMLO.to_enum.with_index(1).each do |demlo, n|
    it "returns #{demlo} for #{n}" do
      n.demlo.should == demlo
    end
  end
end

describe Integer, "#demlo?" do
  DEMLO.each do |n|
    it "returns true for Demlo number #{n}" do
      n.should be_demlo
    end
  end

  DEMLO.to_seq.invert.sample(500).each do |n|
    it "returns false for non-Demlo number #{n}" do
      n.should_not be_demlo
    end
  end
end
