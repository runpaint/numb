describe Integer, "#weird?" do
  WEIRD = [70,836,4030,5830,7192,7912,9272,10430,10570,
                  10792,10990,11410,11690,12110,12530,12670,13370,
                  13510,13790,13930,14770,15610,15890,16030,16310,
                  16730,16870,17272,17570,17990,18410,18830,18970,
                  19390,19670]
  it "returns true if the number is weird" do
    WEIRD.each do |number|
      number.should be_weird
    end
  end

  it "returns false if the number is not weird" do
    [1, 39, 69, 13791].each do |number|
      number.should_not be_weird
    end
  end

  it "returns false if the number is negative" do
    [-1, -70, -39, -19390].each do |number|
      number.should_not be_weird
    end
  end
end
