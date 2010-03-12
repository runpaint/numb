describe Integer, "#octagonal?" do
  #A000567
  OCTAGONAL = [0,1,8,21,40,65,96,133,176,225,280,341,408,481,
               560,645,736,833,936,1045,1160,1281,1408,1541,1680,
               1825,1976,2133,2296,2465,2640,2821,3008,3201,3400,
               3605,3816,4033,4256,4485,4720,4961,5208,5461]

  it "returns true for octagonal numbers" do
    OCTAGONAL.each{|n| n.should be_octagonal}
  end

  it "returns false for non-octagonal numbers" do
    ((0..OCTAGONAL.last).to_a - OCTAGONAL).each{|n| n.should_not be_octagonal}
  end
end
