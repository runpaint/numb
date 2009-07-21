describe Integer, "#powerful?" do
  POWERFUL = [1,4,8,9,16,25,27,32,36,49,64,72,81,100,108,121,
              125,128,144,169,196,200,216,225,243,256,288,289,
              324,343,361,392,400,432,441,484,500,512,529,576,
              625,648,675,676,729,784,800,841,864,900,961,968,
              972,1000]
  it "returns true for a powerful number" do
    POWERFUL.each do |number|
      number.should be_powerful
    end
  end

  it "returns false for a non-powerful number" do
    ((1..999).to_a - POWERFUL).each do |number|
      number.should_not be_powerful
    end
  end

  it "returns false for a negative number" do
    (1..999).each do |number|
      (-number).should_not be_powerful
    end
  end
end

