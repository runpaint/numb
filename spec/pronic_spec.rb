describe Integer, "#pronic?" do
  PRONIC = [0, 2, 6, 12, 20, 30, 42, 56, 72, 90, 110, 132, 156, 182, 210, 
            240, 272, 306, 342, 380, 420, 462, 506, 552, 600, 650, 702, 
            756, 812, 870, 930, 992, 1056, 1122, 1190, 1260, 1332, 
            1406, 1482, 1560, 1640, 1722, 1806, 1892, 1980, 2070, 
            2162, 2256, 2352, 2450, 2550]
  it "returns true if the number is pronic" do
    PRONIC.each do |number|
      number.should be_pronic
    end
  end

  it "returns false if the number is not pronic" do
    [1, 39, 69, 13791].each do |number|
      number.should_not be_pronic
    end
  end

  it "returns false if the number is negative" do
    [-1, -70, -39, -19390].each do |number|
      number.should_not be_pronic
    end
  end
end
