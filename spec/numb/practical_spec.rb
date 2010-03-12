describe Integer, "#practical?" do
  PRACTICAL =[1,2,4,6,8,12,16,18,20,24,28,30,32,36,40,42,48,54,
              56,60,64,66,72,78,80,84,88,90,96,100,104,108,112,
              120,126,128,132,140,144,150,156,160,162,168,176,
              180,192,196,198,200,204,208,210,216,220,224,228,
              234,240,252]
  it "returns true for any practical number" do
    PRACTICAL.each do |number|
      number.should be_practical
    end
  end

  it "returns false for any non-practical number" do
    ((1..252).to_a - PRACTICAL).each do |number|
      number.should_not be_practical
    end
  end

  it "returns true for powers of two" do
    [38, 41, 2, 5].each do |pow|
      (2 ** pow).should be_practical
    end
  end

  it "returns true for perfect numbers" do
    [6, 28, 496, 8128, 33550336, 8589869056, 137438691328].each do |n|
      n.should be_practical
    end
  end
end
