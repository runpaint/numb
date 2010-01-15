describe Integer, "#breeder?" do
  @seq = [
    # Amicable Pairs: A Survery; García, Pedersen, Riele
    [220, 4], [2024, 8], [4981977,13096726199356992193],
    [1001910071475,22707444689738187457315483201],
  ]

  @seq.first(2).each do |a, b|
    it "should return true for breeder pair (#{a}, #{b})" do
      a.breeder?(b).should be_true
    end
  end
  [[345, 98], [4001, 31], [1110, 2]].each do |a, b|
    it "should return false for non-breeder pair (#{a}, #{b})" do
      a.breeder?(b).should be_false
    end
  end
end
