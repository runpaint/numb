describe Integer, "#kaprekar?" do
  KAPREKAR = [1,9,45,55,99,297,703,999,2223,2728,4879,4950,
              5050,5292,7272,7777,9999,17344,22222,38962,77778,
              82656,95121,99999,142857,148149,181819,187110,
              208495,318682,329967,351352,356643,390313,461539,
              466830,499500,500500,533170]

  it "returns true for Kaprekar numbers" do
    KAPREKAR.each do |number|
      number.should be_kaprekar
    end
  end

  it "returns false for non-Kaprekar numbers" do
    ((1..300).to_a - KAPREKAR).each do |number|
      number.should_not be_kaprekar
    end
  end

  it "returns false for negative numbers" do
    [-5, -9, -297, -345].each do |number|
      number.should_not be_kaprekar
    end
  end
end
