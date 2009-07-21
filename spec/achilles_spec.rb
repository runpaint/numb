describe Integer, "achilles?" do
  ACHILLES = [72,108,200,288,392,432,500,648,675,800,864,968,
              972,1125,1152,1323,1352,1372,1568,1800,1944,2000,
              2312,2592,2700,2888,3087,3200,3267,3456,3528,3872,
              3888,4000,4232,4500,4563,4608,5000,5292,5324,5400,
              5408,5488]
  it "returns true for Achilles numbers" do
    ACHILLES.each do |number|
      number.should be_achilles
    end
  end

  it "returns false for non-Achilles numbers" do
    ((1..5487).to_a - ACHILLES).each do |number|
      number.should_not be_achilles
    end
  end

  it "returns false for negative numbers" do
    (1..5487).each do |number|
      (-number).should_not be_achilles
    end
  end
end
