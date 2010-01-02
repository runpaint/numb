describe Integer, "#lucas_carmichael?" do
  LC = [399, 935, 2015, 2915, 4991, 5719, 7055, 8855, 12719, 18095, 
        20705, 20999, 22847, 29315, 31535, 46079, 51359, 60059, 
        63503, 67199, 73535, 76751, 80189, 81719, 88559, 90287, 
        104663, 117215, 120581, 147455, 152279, 155819, 162687, 191807]

  it "returns true for Lucas-Carmichael numbers" do
    LC.each {|n| n.should be_lucas_carmichael}
  end

  it "returns fals for non-Lucas-Carmichael numbers" do
    [23, 398, 672, 90288, 72621].each {|n| n.should_not be_lucas_carmichael}
  end
end
