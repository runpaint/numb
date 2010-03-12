describe Integer, "#hamming?" do
  # A051037
  @seq = [1,2,3,4,5,6,8,9,10,12,15,16,18,20,24,25,27,30,32,
          36,40,45,48,50,54,60,64,72,75,80,81,90,96,100,108,
          120,125,128,135,144,150,160,162,180,192,200,216,
          225,240,243,250,256,270,288,300,320,324,360,375,
          384,400,405]

  @seq.each do |n|
    it "returns true for Hamming number #{n}" do
      n.should be_hamming
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-Hamming number #{n}" do
      n.should_not be_hamming
    end
  end
end
