describe Integer, "#positive?" do
  [1, 2897, 4728, 10].each do |n|
    it "returns true for positive number #{n}" do
      n.should be_positive
    end
  end

  it "returns false for 0" do
    0.should_not be_positive
  end

  [-1, -338, -38302, -10].each do |n|
    it "returns false for negative number #{n}" do
      n.should_not be_positive
    end
  end
end
