describe Integer, "#untouchable?" do
  UNTOUCHABLE = [2,5,52,88,96,120,124,146,162,188,206,210,216,238,
                 246,248,262,268,276,288,290,292,304,306,322,324,
                 326,336,342,372,406,408,426,430,448,472,474,498,
                 516,518,520,530,540,552,556,562,576,584,612,624,
                 626,628,658]

  UNTOUCHABLE.first(5).each do |n|
    it "should return true for untouchable number #{n}" do
      n.should be_untouchable
    end
  end
    
  ((1..UNTOUCHABLE.last).to_a - UNTOUCHABLE).first(5).each do |n|
    it "should return false for non-untouchable number #{n}" do
      n.should_not be_untouchable
    end
  end
end
