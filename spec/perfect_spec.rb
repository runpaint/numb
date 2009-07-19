require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Integer, "#perfect?" do
  it "returns true for 6" do
    6.perfect?.should be_true
  end

  it "returns false for 33" do
    33.perfect?.should be_false
  end

  it "returns false for 8" do
    8.perfect?.should be_false
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
end
