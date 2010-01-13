require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Integer, "#perfect?" do
  it "returns true for the first 7 perfect numbers" do
    [6, 28, 496, 8128, 33550336, 8589869056, 137438691328].each do |n|
      n.perfect?.should be_true
    end
  end

  it "returns false for the neighbours of the first 7 perfect numbers" do
    [6, 28, 496, 8128, 33550336, 8589869056, 137438691328].each do |n|
      (n+1).perfect?.should be_false
      (n-1).perfect?.should be_false
    end
  end

  it "returns false for odd integers" do
    [29,31,33,35].each do |n|
      n.perfect?.should be_false
    end
  end

  it "returns false for 1" do
    1.perfect?.should be_false
  end

  it "returns false for 0" do
    0.perfect?.should be_false
  end

  it "returns false for -1" do
    -1.perfect?.should be_false
  end

  it "returns false for non-perfect positive integers" do
    [8, 66, 3478].each do |n|
      n.perfect?.should be_false
    end
  end

  it "returns false for negative integers" do
    -6.perfect?.should be_false
  end
end

describe Integer, "#proper_divisors" do
  it "returns an Array" do
    6.proper_divisors.should be_an_instance_of(Array)
  end

  it "returns integers that divide into self with no remainder" do
    6.proper_divisors.should include(2, 3)
  end

  it "doesn't return integers that divide into self with a remainder" do
    6.proper_divisors.should_not include(4, 5)
  end

  it "doesn't return itself as a divisor" do
    9.proper_divisors.should_not include(9)
  end

  it "returns all of the proper divisors of self" do
    33.proper_divisors.sort.should == [1, 3, 11]
  end

  it "returns [] for 1" do
    1.proper_divisors.should == []
  end

  it "returns [] for 0" do
    0.proper_divisors.should == []
  end

  it "returns [] for -1" do
    -1.proper_divisors.should == []
  end

  it "returns [] when self is negative" do
    -32.proper_divisors.should == []
  end
end

describe Integer, "#digital_root" do
  it "returns each single-digit number as is" do
    (0..9).each do |n|
      n.digital_root.should == n
    end
  end

  it "returns the sum of the digits of multi-digit numbers" do
    18.digital_root.should == 9
  end

  it "returns a single digit even when the sum of the digits is greater than 9" do
    65536.digital_root.should == 7
  end

  it "works for negative numbers" do
    -4.digital_root.should == 5
    -99.digital_root.should == 9
  end
end
