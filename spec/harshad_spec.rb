describe Integer, "#harshad?" do
  # A005349
  @seq = [1,2,3,4,5,6,7,8,9,10,12,18,20,21,24,27,30,36,40,
          42,45,48,50,54,60,63,70,72,80,81,84,90,100,102,
          108,110,111,112,114,117,120,126,132,133,135,140,
          144,150,152,153,156,162,171,180,190,192,195,198,
          200,201,204].to_seq

  @seq.each do |n|
    it "returns true for Harshad (Niven) number #{n}" do
      n.should be_harshad
    end

    it "returns false for negative Harshad (Niven) number #{-n}" do
      (-n).should_not be_harshad
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-Harshad (Niven) number #{n}" do
      n.should_not be_harshad
    end
  end

  it "returns false for 0" do
    0.should_not be_harshad
  end
end
