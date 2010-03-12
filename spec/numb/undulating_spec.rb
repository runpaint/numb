describe Integer, "#undulating?" do
  # http://www.research.att.com/~njas/sequences/A046075
  UNDULATING = [101,121,131,141,151,161,171,181,191,202,212,232,
                242,252,262,272,282,292,303,313,323,343,353,363,
                373,383,393,404,414,424,434,454,464,474,484,494,
                505,515,525,535,545,565,575,585,595,606,616,626,
                636,646,656]

  it "requires true for undulating numbers" do
    UNDULATING.each do |number|
      number.should be_undulating
    end
  end

  it "requires false for non-undulating numbers" do
    ((1..300).to_a - UNDULATING).each do |number|
      number.should_not be_undulating
    end
  end
end
