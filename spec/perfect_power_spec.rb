describe Integer, "#perfect_power?" do
  PERFECT_POWERS = [1, 4,8,9,16,25,27,32,36,49,64,81,100,121,125,128,
                    144,169,196,216,225,243,256,289,324,343,361,400,
                    441,484,512,529,576,625,676,729,784,841,900,961,
                    1000,1024,1089,1156,1225,1296,1331,1369,1444,1521,
                    1600,1681,1728,1764]
  it "returns true for perfect powers" do
    PERFECT_POWERS.each do |power|
      power.should be_perfect_power
    end
  end

  it "returns false for imperfect powers" do
    ((1..1764).to_a - PERFECT_POWERS).each do |power|
      power.should_not be_perfect_power
    end
  end

  it "returns false for negative numbers" do
    (1..1764).each do |power|
      (-power).should_not be_perfect_power
    end
  end
end
