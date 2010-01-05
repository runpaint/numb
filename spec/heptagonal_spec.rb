describe Integer, "#heptagonal?" do
  HEPTAGONAL = [0,1,7,18,34,55,81,112,148,189,235,286,342,403,
                469,540,616,697,783,874,970,1071,1177,1288,1404,
                1525,1651,1782,1918,2059,2205,2356,2512,2673,2839,
                3010,3186,3367,3553,3744,3940,4141,4347,4558,4774,
                4995,5221,5452,5688]

  it "returns true for a heptagonal number" do
    HEPTAGONAL.each{|n| n.should be_heptagonal}
  end

  it "returns false for a non-heptagonal number" do
    ((0..HEPTAGONAL.last).to_a - HEPTAGONAL).each{|n| n.should_not be_heptagonal}
  end
end
