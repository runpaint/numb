# coding: utf-8
describe Integer, "#mobius" do
  # A008683
  @seq = [1,-1,-1,0,-1,1,-1,0,0,1,-1,0,-1,1,1,0,-1,0,-1,0,
          1,1,-1,0,0,1,0,0,-1,-1,-1,0,1,1,1,0,-1,1,1,0,-1,
          -1,-1,0,0,1,-1,0,0,0,1,0,-1,0,1,0,1,1,-1,0,-1,1,0,
          0,1,-1,-1,0,1,-1,-1,0,-1,1,0,0,1].to_seq

  @seq.each_with_index do |i, n|
    it "should return #{i} for #{n}" do
      n.succ.mobius.should == i
    end

    it "should return nil for negative number #{-n}" do
      (-n.succ).mobius.should be_nil
    end
  end

  it "returns −1 if n is prime" do
    Prime.first(10).each do |n|
      n.mobius.should == -1
    end
  end

  
  # A013929
  @seq = [4,8,9,12,16,18,20,24,25,27,28,32,36,40,44,45,48,
          49,50,52,54,56,60,63,64,68,72,75,76,80,81,84,88,
          90,92,96,98,99,100,104,108,112,116,117,120,121,
          124,125,126,128,132,135,136,140,144,147,148,150,
          152,153,156,160]
  @seq.sample(10).each do |n|
    it "should return 0 for non-square-free number #{n}" do
      n.mobius.should == 0
     end
  end
end
