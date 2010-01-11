describe Integer, "#leyland?" do
  LEYLAND = [8,17,32,54,57,100,145,177,320,368,512,593,945,
             1124,1649,2169,2530,4240,5392,6250,7073,8361,
             16580,18785,20412,23401,32993,60049,65792,69632,
             93312,94932,131361,178478,262468,268705,397585,
             423393,524649,533169]

  LEYLAND.each do |n|
    it "should return true for Leyland number #{n}" do
      n.should be_leyland
    end
  end

  10.times.map do
    r = Random.new.rand(1..LEYLAND.last)
    redo if LEYLAND.include? r
    r
  end.each do |n|
    it "should return false for non-Leyland number #{n}" do
      n.should_not be_leyland
    end
  end
end
