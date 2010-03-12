describe Integer, "#smarandache-wellin?" do
  # http://www.research.att.com/~njas/sequences/A019518
  SMARANDACHE_WELLIN = [2,23,235,2357,235711,23571113,2357111317,
                        235711131719,23571113171923,2357111317192329,
                        235711131719232931,23571113171923293137,
                        2357111317192329313741,235711131719232931374143,
                        23571113171923293137414347]

  it "returns true for Smarandache-Wellin numbers" do
    SMARANDACHE_WELLIN.each do |number|
      number.should be_smarandache_wellin
    end
  end

  it "returns false for non-Smarandache-Wellin numbers" do
    [3,5757490, 99].each do |number|
      number.should_not be_smarandache_wellin
    end
  end

  it "returns false for numbers which merely contain Smarandache-Wellin numbers" do
    [234, 82357].each do |number|
      number.should_not be_smarandache_wellin
    end
  end
end
