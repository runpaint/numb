describe Integer, "#pentagonal?" do
  PENTAGONAL = [0,1,5,12,22,35,51,70,92,117,145,176,210,247,287,
                330,376,425,477,532,590,651,715,782,852,925,1001,
                1080,1162,1247,1335,1426,1520,1617,1717,1820,1926,
                2035,2147,2262,2380,2501,2625,2752,2882,3015,3151]

  it "returns true for pentagonal numbers" do
    PENTAGONAL.each{|n| n.should be_pentagonal}
  end

  it "returns false for non-pentagonal numbers" do
    ((0..PENTAGONAL.last).to_a - PENTAGONAL).each{|n| n.should_not be_pentagonal}
  end
end
