describe Integer, "#factor?" do
  it "returns true if self divided by other leaves no remainder" do
    100.factor?(10).should be_true
    9.factor?(3).should be_true    
  end

  it "returns false if other is bigger than self" do
    50.factor?(500).should be_false
  end

  it "returns false if self divided by other leaves a remainder" do
    10.factor?(3).should be_false
  end

  it "returns false if other is 0" do
    44.factor?(0).should be_false
  end

  it "works with negative numbers" do
    20.factor?(-5).should be_true
  end
end
