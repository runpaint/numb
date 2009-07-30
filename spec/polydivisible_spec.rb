describe Integer, "#polydivisible?" do
  # http://www.research.att.com/~njas/sequences/A078282
  POLYDIVISIBLE = [1,10,102,1020,10200,102000,1020005,10200056,
                   102000564,1020005640,10200056405,3608528850368400786036725,
                   48000688208466084040,30000600003, 381654729]

  it "returns true for polydivisible numbers" do
    POLYDIVISIBLE.each do |number|
      number.should be_polydivisible
    end
  end

  it "returns false for non-polydivisible numbers" do
    [123456, 2020, 102001].each do |number|
      number.should_not be_polydivisible
    end
  end
end

