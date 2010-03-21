# A002203
PELL_LUCAS = [2,2,6,14,34,82,198,478,1154,2786,6726,16238,
              39202,94642,228486,551614,1331714,3215042,7761798,
              18738638,45239074,109216786,263672646,636562078,
              1536796802,3710155682,8957108166,21624372014,
              52205852194]

describe Integer, "#pell_lucas?" do
  PELL_LUCAS.each do |n|
    it "returns true for Pell-Lucas number #{n}" do
      n.should be_pell_lucas
    end
  end

  PELL_LUCAS.to_seq.invert.sample(10).each do |n|
    it "returns false for non-Pell-Lucas number #{n}" do
      n.should_not be_pell_lucas
    end
  end
end

describe Integer, "#pell_lucas" do
  PELL_LUCAS.each_with_index do |l, n|
    it "returns #{l} for the #{n}#{n.ordinal} Pell-Lucas number" do
      n.pell_lucas.should == l
    end
  end
end
