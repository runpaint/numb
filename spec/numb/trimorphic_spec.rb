describe Integer, "#trimorphic?" do
  TRIMORPHIC = [0,1,4,5,6,9,24,25,49,51,75,76,99,125,249,251,375,
                376,499,501,624,625,749,751,875,999,1249,3751,
                4375,4999,5001,5625,6249,8751,9375,9376,9999,
                18751,31249,40625,49999,50001,59375,68751,81249,
                90624,90625]
  
  it "returns true for trimorphic numbers" do
    TRIMORPHIC.each do |number|
      number.should be_trimorphic
    end
  end

  it "returns false for non-trimorphic numbers" do
    [2,3,7, 8752, 906266, 33333].each do |number|
      number.should_not be_trimorphic
    end
  end

  it "returns false for negative numbers" do
    [2,3,4,7,9,8752, 906266, 33333].each do |number|
      (-number).should_not be_trimorphic
    end
  end
end
