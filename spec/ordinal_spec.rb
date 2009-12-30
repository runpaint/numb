describe Integer, "#ordinal" do
  it "returns 'th' for numbers ending in 0" do
    0.ordinal.should == 'th'
    20.ordinal.should == 'th'
  end

  it "returns 'st' for numbers ending in 1" do
    1.ordinal.should == 'st'
    201.ordinal.should == 'st'
    111.ordinal.should == 'st'
  end

  it "returns 'nd' for numbers ending in 2" do
    2.ordinal.should == 'nd'
    202.ordinal.should == 'nd'
    222.ordinal.should == 'nd'
  end

  it "returns 'rd' for numbers ending in 3" do
    3.ordinal.should == 'rd'
    203.ordinal.should == 'rd'
    333.ordinal.should == 'rd'
  end

  it "returns 'th' for numbers ending in 4" do
    4.ordinal.should == 'th'
    204.ordinal.should == 'th'
    444.ordinal.should == 'th'
  end

  it "returns 'th' for numbers ending in 5" do
    5.ordinal.should == 'th'
    205.ordinal.should == 'th'
    555.ordinal.should == 'th'
  end

  it "returns 'th' for numbers ending in 6" do
    6.ordinal.should == 'th'
    206.ordinal.should == 'th'
    666.ordinal.should == 'th'
  end

  it "returns 'th' for numbers ending in 7" do
    7.ordinal.should == 'th'
    207.ordinal.should == 'th'
    777.ordinal.should == 'th'
  end

  it "returns 'th' for numbers ending in 8" do
    8.ordinal.should == 'th'
    208.ordinal.should == 'th'
    888.ordinal.should == 'th'
  end

  it "returns 'th' for numbers ending in 9" do
    9.ordinal.should == 'th'
    209.ordinal.should == 'th'
    999.ordinal.should == 'th'
  end

  it "returns 'th' for 10..19" do
    (10..19).each{|n| n.ordinal.should == 'th'}
  end
end
