describe Integer, "#unitary_divisor?" do
  # A034460 
  UNITARY_DIVISORS = [0,1,1,1,1,6,1,1,1,8,1,8,1,10,9,1,1,12,1,10,11,14,
                      1,12,1,16,1,12,1,42,1,1,15,20,13,14,1,22,17,14,1,
                      54,1,16,15,26,1,20,1,28,21,18,1,30,17,16,23,32,1,
                      60,1,34,17,1,19,78,1,22,27,74,1,18,1,40,29,24,19,
                      90,1,22,1,44]

  UNITARY_DIVISORS.each_with_index do |sum, i|
    i = i.succ
    it "should return true for the unitary divisors of #{i}" do
      got = (i.proper_positive_divisors.
              select{|d| i.unitary_divisor?(d)}.
              reduce(:+)) || 0
      sum.should == got
    end
  end

  it "should return true for 60 and 5" do
    60.unitary_divisor?(5).should be_true
  end

  (10..20).each do |n|
    it "returns true when the argument is 1" do
      n.unitary_divisor?(1).should be_true
    end
  end

  it "should return false for 60 and 6" do
    60.unitary_divisor?(6).should be_false
  end
end
