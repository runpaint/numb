describe Integer, "#unitary_perfect?" do
  UNITARY_PERFECT = [6,60,90,87360,146361946186458562560000]

  UNITARY_PERFECT.first(4).each do |n|
    it "should return true for unitary perfect number #{n}" do
      n.should be_unitary_perfect
    end

    m = n + 7
    it "should return false for non-unitary-perfect number #{m}" do
      m.should_not be_unitary_perfect
    end
  end
end
