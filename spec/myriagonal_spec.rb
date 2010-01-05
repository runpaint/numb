describe Integer, "#myriagonal?" do

  MYRIAGONAL = [0, 1, 10000, 29997, 59992, 99985, 149976, 209965, 279952, 
                359937, 449920, 549901, 659880, 779857, 909832, 1049805, 
                1199776, 1359745, 1529712, 1709677, 1899640, 2099601]

  it "should return true for myriagonal numbers" do
    MYRIAGONAL.shuffle.first(2).each{|n| n.should be_myriagonal}
  end

  it "should return false for non-myriagonal numbers" do
    ((0..MYRIAGONAL.last).to_a - MYRIAGONAL).shuffle.first(2).each do |n| 
      n.should_not be_myriagonal
    end
  end
end
