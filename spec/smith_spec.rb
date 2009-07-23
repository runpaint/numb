describe Integer, "#smith?" do
  # http://www.research.att.com/~njas/sequences/A006753
  SMITH = [4,22,27,58,85,94,121,166,202,265,274,319,346,355,
           378,382,391,438,454,483,517,526,535,562,576,588,
           627,634,636,645,648,654,663,666,690,706,728,729,
           762,778,825,852,861,895,913,915,922,958,985,1086]

  it "returns true for Smith numbers" do
    SMITH.each do |number|
     number.should be_smith
    end
  end

  it "returns false for non-Smith numbers" do
    ((1..1086).to_a - SMITH).each do |number|
     number.should_not be_smith
    end
  end
end
