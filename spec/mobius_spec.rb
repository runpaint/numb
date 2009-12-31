# coding: utf-8
describe Integer, "#mobius" do
  # http://www.research.att.com/~njas/sequences/A008683
  MOBIUS = [1,-1,-1,0,-1,1,-1,0,0,1,-1,0,-1,1,1,0,-1,0,-1,0,
            1,1,-1,0,0,1,0,0,-1,-1,-1,0,1,1,1,0,-1,1,1,0,-1,
            -1,-1,0,0,1,-1,0,0,0,1,0,-1,0,1,0,1,1,-1,0,-1,1,0,
            0,1,-1,-1,0,1,-1,-1,0,-1,1,0,0,1]

  it "returns 1 if n is a square-free positive integer with an even number of distinct prime factors" do
    MOBIUS.each_with_index do |value, idx|
      next unless value == 1
      (idx + 1).mobius.should == 1
    end
  end

  it "returns −1 if n is a square-free positive integer with an odd number of distinct prime factors" do
    MOBIUS.each_with_index do |value, idx|
      next unless value == -1
      (idx + 1).mobius.should == -1
    end
  end

  it "returns −1 if n is prime" do
    Prime.each(200).each do |prime|
      next if MOBIUS.size < prime
      prime.mobius.should == -1
    end
  end

  it "returns 0 iff n is not square-free." do
    MOBIUS.each_with_index do |value, idx|
      next unless value == 0
      (idx + 1).mobius.should == 0
    end

    # http://www.research.att.com/~njas/sequences/A013929
    [4,8,9,12,16,18,20,24,25,27,28,32,36,40,44,45,48,
     49,50,52,54,56,60,63,64,68,72,75,76,80,81,84,88,
     90,92,96,98,99,100,104,108,112,116,117,120,121,
     124,125,126,128,132,135,136,140,144,147,148,150,
     152,153,156,160].each do |number|
      next if MOBIUS.size < number
      number.mobius.should == 0
     end
  end

  it "returns nil if n is not a positive integer" do
    (0..25).each do |number|
      (-number).mobius.should be_nil
    end
  end
end
