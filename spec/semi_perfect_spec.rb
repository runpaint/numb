describe Integer, "#semi_perfect?" do
  SEMI_PERFECT = [6,12,18,20,24,28,30,36,40,42,48,54,56,60,66,72,
                  78,80,84,88,90,96,100,102,104,108,112,114,120,126,
                  132,138,140,144,150,156,160,162,168,174,176,180,
                  186,192,196,198,200,204,208,210,216,220,222,224,
                  228,234,240,246,252,258,260,264]
  it "returns true if the number is semi-perfect" do
    SEMI_PERFECT.each do |number|
      number.should be_semi_perfect
    end
  end

  it "returns false if the number is not semi-perfect" do
    ((1..263).to_a - SEMI_PERFECT).each do |number|
      number.should_not be_semi_perfect
    end
  end

  it "returns false if the number is negative" do
    (1..263).each do |number|
      (-number).should_not be_semi_perfect
    end
  end
end
