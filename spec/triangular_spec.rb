describe Integer, "#triangular?" do
  TRIANGULAR = [0,1,3,6,10,15,21,28,36,45,55,66,78,91,105,120,
                136,153,171,190,210,231,253,276,300,325,351,378,
                406,435,465,496,528,561,595,630,666,703,741,780,
                820,861,903,946,990,1035,1081,1128,1176,1225,1275,
                1326,1378,1431]

  it "returns true for triangular numbers" do
    TRIANGULAR.each do |number|
      number.should be_triangular
    end
  end

  it "returns false for non-triangular numbers" do
    ((1..1431).to_a - TRIANGULAR).each do |number|
      number.should_not be_triangular
    end
  end
end
