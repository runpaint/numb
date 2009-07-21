describe Integer, "#square?" do
  SQUARES = [0,1,4,9,16,25,36,49,64,81,100,121,144,169,196,
             225,256,289,324,361,400,441,484,529,576,625,676,
             729,784,841,900,961,1024,1089,1156,1225,1296,1369,
             1444,1521,1600,1681,1764,1849]
  
  it "returns true if the number is square" do
    SQUARES.each do |number|
      number.should be_square
    end
  end

  it "returns false if the number isn't square" do
    ((1..1850).to_a - SQUARES).each do |number|
      number.should_not be_square
    end
  end

  it "returns false for negative numbers" do
    [-1, -378, -9].each do |number|
      number.should_not be_square
    end
  end
end
