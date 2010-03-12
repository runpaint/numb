describe Integer, "#lucas?" do
  # A000032
  @seq = [2,1,3,4,7,11,18,29,47,76,123,199,322,521,843,
          1364,2207,3571,5778,9349,15127,24476,39603,64079,
          103682,167761,271443,439204,710647,1149851,
          1860498,3010349,4870847,7881196,12752043,20633239,
          33385282].to_seq

  @seq.each do |n|
    it "returns true for Lucas number #{n}" do
      n.should be_lucas
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-Lucas number #{n}" do
      n.should_not be_lucas
    end
  end
end
