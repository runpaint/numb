# coding: utf-8
describe Integer, "#tetrahedral" do
  # A000292
  @seq = [0,1,4,10,20,35,56,84,120,165,220,286,364,455,560,
          680,816,969,1140,1330,1540,1771,2024,2300,2600,
          2925,3276,3654,4060,4495,4960,5456,5984,6545,7140,
          7770,8436,9139,9880,10660,11480,12341,13244,14190,
          15180]

  @seq.each_with_index do |t, n|
    it "returns #{t} for the #{n}#{n.ordinal} tetrahedral number" do
      n.tetrahedral.should == t
    end
  end
end
