describe Integer, "#harshad?" do
  # http://www.research.att.com/~njas/sequences/A005349
  HARSHAD = [1,2,3,4,5,6,7,8,9,10,12,18,20,21,24,27,30,36,40,
             42,45,48,50,54,60,63,70,72,80,81,84,90,100,102,
             108,110,111,112,114,117,120,126,132,133,135,140,
             144,150,152,153,156,162,171,180,190,192,195,198,
             200,201,204]
  it "returns true for Harshad (Niven) numbers" do
    HARSHAD.each do |number|
      number.should be_harshad
    end
  end

  it "returns false for non-Harshad/Niven numbers" do
    ((1..204).to_a - HARSHAD).each do |number|
      number.should_not be_harshad
    end
  end

  it "returns false for 0" do
    0.should_not be_harshad
  end

  it "returns false for negative numbers" do
    (1..204).each do |number|
      (-number).should_not be_harshad
    end
  end
end
