describe Integer, "#integer?" do
  [0, 23, 4509, 2222981011].each do |n|
    it "should return true for integer #{n}" do
      n.should be_integer
    end
  end
end

describe Float, "#integer?" do
  [23.0, 4509.0, 2222981011.000].each do |n|
    it "should return true for integer #{n}" do
      n.should be_integer
    end
  end

  [23.5, 4509.0000001, 2222981011.020].each do |n|
    it "should return false for float #{n}" do
      n.should_not be_integer
    end
  end
end
