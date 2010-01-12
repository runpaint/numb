describe Integer, "#noncototient?" do
  # A005278
  NONCOTOTIENT = [10,26,34,50,52,58,86,100,116,122,130,134,146,154,
                  170,172,186,202,206,218,222,232,244,260,266,268,
                  274,290,292,298,310,326,340,344,346,362,366,372,
                  386,394,404,412,436,466,470,474,482,490,518,520]
  (NONCOTOTIENT.sample(10) + 10.times.map{ Random.new.rand(1..NONCOTOTIENT.last) }).each do |n|
    if NONCOTOTIENT.include?(n)
      it "should return true for noncototient number #{n}" do
        n.should be_noncototient
      end
    else
      it "should return false for non-noncototient number #{n}" do
        n.should_not be_noncototient
      end
    end
  end
end
