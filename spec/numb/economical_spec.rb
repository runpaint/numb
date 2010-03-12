describe Integer, "#economical?" do
  @seq = {
          # A046759
          :frugal =>      [125,128,243,256,343,512,625,729,1024,1029,1215,
                           1250,1280,1331,1369,1458,1536,1681,1701,1715,1792,
                           1849,1875,2048,2187,2197,2209,2401,2560,2809,3125,
                           3481,3584,3645,3721,4096,4374,4375,4489,4802,
                           4913],
          # A046758
          :equidigital => [1,2,3,5,7,10,11,13,14,15,16,17,19,21,23,25,27,29,
                           31,32,35,37,41,43,47,49,53,59,61,64,67,71,73,79,
                           81,83,89,97,101,103,105,106,107,109,111,112,113,
                           115,118,119,121,122,123,127,129,131,133,134,135,
                           137,139]
  }

  @seq.each do |type, seq|
    seq.each do |n|
      it "should return true for #{type} number #{n}" do
        n.should be_economical
      end
    end
  end

  (@seq[:equidigital] + @seq[:frugal].select{|e| e <= @seq[:equidigital].last}).
    to_seq.invert.sample(10).each do |n|
    it "should return false for non-economical number #{n}" do
      n.should_not be_economical
    end
  end
end
