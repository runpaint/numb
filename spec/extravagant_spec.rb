describe Integer, "#extravagant?" do
  # http://www.research.att.com/~njas/sequences/A046760
  EXTRAVAGANT = [4,6,8,9,12,18,20,22,24,26,28,30,33,34,36,38,39,
                 40,42,44,45,46,48,50,51,52,54,55,56,57,58,60,62,
                 63,65,66,68,69,70,72,74,75,76,77,78,80,82,84,85,
                 86,87,88,90,91,92,93,94,95,96,98,99,100,102,104,
                 108,110,114]
  
  it "returns true for extravagant numbers" do
    EXTRAVAGANT.each do |number|
      number.should be_extravagant
    end
  end

  it "returns false for non-extravagant numbers" do
    ((1..114).to_a - EXTRAVAGANT).each do |number|
      number.should_not be_extravagant
    end
  end
end
