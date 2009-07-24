describe Integer, "#factorion?" do
  it "returns true for factorions" do
    [1, 2, 145, 40585].each do |number|
      number.should be_factorion
    end
  end

  it "returns false for non-factorions" do
    [3, 146, 4828291001].each do |number|
      number.should_not be_factorion
    end
  end
end
