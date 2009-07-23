describe Integer, "#nivenmorphic?" do
  NIVENMORPHIC = [1,2,3,4,5,6,7,8,9,910,0,912,11713,6314,915,3616,
                  15317,918,17119,9920,18921,9922,82823,19824,9925,
                  46826,18927,18928,78329,99930,585931,388832,
                  1098933,198934,289835,99936,99937,478838,198939,
                  1999840]
  it "returns true for Nivenmorphic numbers" do
    NIVENMORPHIC.each do |number|
      number.should be_nivenmorphic
    end
  end

  it "returns false for non-Nivenmorphic numbers" do
    ((1..300).to_a - NIVENMORPHIC).each do |number|
      number.should_not be_nivenmorphic
    end
  end

  it "returns false for negative numbers" do
    (1..300).each do |number|
      (-number).should_not be_nivenmorphic
    end
  end
end
