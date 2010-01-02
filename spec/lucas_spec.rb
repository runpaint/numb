describe Integer, "#lucas?" do
  LUCAS = [2,1,3,4,7,11,18,29,47,76,123,199,322,521,843,
           1364,2207,3571,5778,9349,15127,24476,39603,64079,
           103682,167761,271443,439204,710647,1149851,
           1860498,3010349,4870847,7881196,12752043,20633239,
           33385282]

  it "returns true for Lucas numbers" do
    LUCAS.each{|n| n.should be_lucas}
  end

  it "returns false for non-Lucas numbers" do
    (0..10_000).each do |n| 
      next if LUCAS.include?(n)
      n.should_not be_lucas
    end
  end
end
