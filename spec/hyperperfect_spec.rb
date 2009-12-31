describe Integer, "#hyperperfect?" do
  # http://www.research.att.com/~njas/sequences/A000396
  PERFECT = [6,28,496,8128,33550336,8589869056,137438691328,
             2305843008139952128,
             2658455991569831744654692615953842176,
             191561942608236107294793378084303638130997321548169216]


  it "returns true for a 1-hyperperfect (perfect) number" do
    PERFECT.first(5).each do |number|
      number.should be_hyperperfect
    end
  end

  it "returns false for a non-1-hyperperfect (non-perfect) number" do
    ((1..2000).to_a - PERFECT).shuffle.first(5).each do |number|
      number.should_not be_hyperperfect
    end
  end

  it "returns true for 6-hyperperfect numbers with an argument of 6" do
    # http://www.research.att.com/~njas/sequences/A028499
    [301,16513,60110701,1977225901].each do |number|
      number.hyperperfect?(6).should be_true
    end
  end

  it "returns false for non-6-hyperperfect numbers with an argument of 6" do
    [302,6].each do |number|
      number.hyperperfect?(6).should be_false
    end
  end

  it "returns true for 18-hyperperfect numbers with an argument of 18" do
    # http://www.research.att.com/~njas/sequences/A028501
    [1333,1909,2469601,893748277].each do |number|
      number.hyperperfect?(18).should be_true
    end
  end

  it "returns false for non-18-hyperperfect numbers with an argument of 18" do
    [6,1334].each do |number|
      number.hyperperfect?(18).should be_false
    end
  end

  it "returns true for 2772-hyperperfect numbers with an argument of 2772" do
    # http://www.research.att.com/~njas/sequences/A028502
    [95295817,124035913,749931337,4275383113].each do |number|
      number.hyperperfect?(2772).should be_true
    end
  end

  it "returns false for non-2722-hyperperfect numbers with an argument of 2722" do
    [6,95295816].each do |number|
      number.hyperperfect?(2772).should be_false
    end
  end
end
