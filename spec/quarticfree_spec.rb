describe Integer, "#quarticfree?" do
  @seq = {
    # A046100
    true =>  [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,17,18,19,20,
              21,22,23,24,25,26,27,28,29,30,31,33,34,35,36,37,
              38,39,40,41,42,43,44,45,46,47,49,50,51,52,53,54,
              55,56,57,58,59,60,61,62,63,65,66,67,68,69,70,71,
              72,73,74,75,76],
    # A046101          
    false => [16,32,48,64,80,81,96,112,128,144,160,162,176,192,
              208,224,240,243,256,272,288,304,320,324,336,352,
              368,384,400,405,416,432,448,464,480,486,496,512,
              528,544,560,567,576,592,608,624,625,640,648,656,
              672,688,704].to_seq
  }

  @seq[false].invert.sample(10).each do |n|
    it "should return true for quarticfree number #{n}" do
      n.should be_quarticfree
    end
  end

  @seq[false].sample(10).each do |n|
    it "should return false for non-quarticfree number #{n}" do
      n.should_not be_quarticfree
    end
  end
end
