# coding: utf-8
describe Integer, "#number_of_distinct_prime_factors" do
  # http://www.research.att.com/~njas/sequences/A001221
  OMEGA = [0,1,1,1,1,2,1,1,1,2,1,2,1,2,2,1,1,2,1,2,2,2,1,2,
           1,2,1,2,1,3,1,1,2,2,2,2,1,2,2,2,1,3,1,2,2,2,1,2,1,
           2,2,2,1,2,2,2,2,2,1,3,1,2,2,1,2,3,1,2,2,3,1,2,1,2,
           2,2,2,3,1,2,1,2,1,3,2,2,2,2,1,3,2,2,2,2,2,2,1,2,2,
           2,1,3,1,2,3,2,1,2,1,3,2]

  it "returns the number of distinct prime factors of self" do
    OMEGA.each_with_index do |omega, number|
      (number + 1).number_of_distinct_prime_factors.should == omega
    end

    # http://www.research.att.com/~njas/sequences/A046386
    [210,330,390,462,510,546,570,690,714,770,798,858,
     870,910,930,966,1110,1122,1155,1190,1218,1230,
     1254,1290,1302,1326,1330,1365,1410,1430,1482,1518,
     1554,1590,1610,1722,1770,1785,1794,1806,1830,1870,
     1914,1938,1974].each do |number|
      number.number_of_distinct_prime_factors.should == 4
     end
  end

  it "does not count any factor more than once" do
    [4, 8, 9, 12, 16, 18, 20, 24, 25, 27, 28, 32, 36, 40, 44, 45, 48, 49, 
     50, 52, 54, 56, 60, 63, 64, 68, 72, 75, 76, 80, 81, 84, 88, 90, 92, 
     96, 98, 99, 100, 104, 108, 112, 116, 117, 120, 121, 124, 125, 126, 128,
     132, 135, 136, 140, 144, 147, 148, 150].each do |number|
      number.prime_factors.size.should >= 2
      number.prime_factors.uniq.should_not == number.prime_factors
      number.number_of_distinct_prime_factors.should == number.prime_factors.uniq.size
     end
  end
end
