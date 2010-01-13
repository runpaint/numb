describe Integer, "#kaprekar?" do
  # A006886
  @seq = [1,9,45,55,99,297,703,999,2223,2728,4879,4950,
          5050,5292,7272,7777,9999,17344,22222,38962,77778,
          82656,95121,99999,142857,148149,181819,187110,
          208495,318682,329967,351352,356643,390313,461539,
          466830,499500,500500,533170].to_seq

  @seq.each do |n|
    it "returns true for Kaprekar number #{n}" do
      n.should be_kaprekar
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-Kaprekar number #{n}" do
      n.should_not be_kaprekar
    end
  end

  it "returns false for negative numbers" do
    [-5, -9, -297, -345].each do |number|
      number.should_not be_kaprekar
    end
  end
end
