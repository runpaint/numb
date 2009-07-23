describe Integer, "#automorphic?" do
  AUTOMORPHIC = [0,1,5,6,25,76,376,625,9376,90625,109376,890625,
             2890625,7109376,12890625,87109376,212890625,
             787109376,1787109376,8212890625,18212890625,
             81787109376,918212890625,9918212890625,
             40081787109376,59918212890625]
  it "returns true for automorphic numbers" do
    AUTOMORPHIC.each do |n|
      n.should be_automorphic
    end
  end

  it "returns false for negative automorphic numbers" do
    (AUTOMORPHIC - [0]).each do |n|
      (-n).should_not be_automorphic
    end
  end

  it "returns false for non-automorphic numbers" do
    [2,4,626, 100228].each do |n|
      n.should_not be_automorphic
    end
  end

  it "returns false for negative numbers" do
    [2,4,626, 100228].each do |n|
      n.should_not be_automorphic
    end
  end
end

