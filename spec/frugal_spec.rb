describe Integer, "#frugal?" do
  # http://www.research.att.com/~njas/sequences/A046759
  FRUGAL = [125,128,243,256,343,512,625,729,1024,1029,1215,
            1250,1280,1331,1369,1458,1536,1681,1701,1715,1792,
            1849,1875,2048,2187,2197,2209,2401,2560,2809,3125,
            3481,3584,3645,3721,4096,4374,4375,4489,4802,
            4913]
  
  it "returns true for frugal numbers" do
    FRUGAL.each do |number|
      number.should be_frugal
    end
  end

  it "returns false for non-frugal numbers" do
    ((126..4912).to_a - FRUGAL).each do |number|
      number.should_not be_frugal
    end
  end
end
