describe Integer, "#friendly?" do
  # A050973, A050972
  FRIENDLY = [28,140,200,224,234,270,308,364,476,496,496,532,
              600,644,672,700,812,819,868,936,1036,1148,1170,
              1204,1316,1400,1484,1488,1488,1540,1638,1638,1638,
              1652,1708,1800,1820,1876,1988,2016,2044,2200,2212,
              2324].zip([6,30,80,40,12,84,66,78,102,6,28,114,240,138,120,
              150,174,135,186,864,222,246,60,258,282,560,318,84,
              270,330,84,270,1488,354,366,720,390,402,426,360,
              438,880,474,498,510,440,30,140,534,132,1040,570,
              582,606])

  FRIENDLY.each do |pair|
    it "should return true for friendly pair #{pair.join(', ')}" do
      pair.first.friendly?(pair.last).should be_true
    end

    it "should return true for friendly pair #{pair.reverse.join(', ')}" do
      pair.last.friendly?(pair.first).should be_true
    end
  end

  it "accepts clubs larger than 2 members" do
    84.friendly?(270, 1488, 1638).should be_true
  end

  it "requires every member of the club to have the same abundancy" do
    6.friendly?(28, 496, 500).should be_false
  end

  it "returns false for two friendly numbers which are not mutally so" do
    532.friendly?(140).should be_false
  end

  it "returns false for a solitary pair (2,5)" do
    2.friendly?(5).should be_false
  end
end
