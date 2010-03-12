# coding: utf-8
describe Integer, "#number_of_distinct_prime_factors" do
  # A001221
  @seq = [0,1,1,1,1,2,1,1,1,2,1,2,1,2,2,1,1,2,1,2,2,2,1,2,
          1,2,1,2,1,3,1,1,2,2,2,2,1,2,2,2,1,3,1,2,2,2,1,2,1,
          2,2,2,1,2,2,2,2,2,1,3,1,2,2,1,2,3,1,2,2,3,1,2,1,2,
          2,2,2,3,1,2,1,2,1,3,2,2,2,2,1,3,2,2,2,2,2,2,1,2,2,
          2,1,3,1,2,3,2,1,2,1,3,2].to_seq

  @seq.each_with_index do |omega, n|
    it "should return #{omega} for #{n}" do
      n.succ.number_of_distinct_prime_factors.should == omega
    end
  end

  # A046386
  @seq = [210,330,390,462,510,546,570,690,714,770,798,858,
          870,910,930,966,1110,1122,1155,1190,1218,1230,
          1254,1290,1302,1326,1330,1365,1410,1430,1482,1518,
          1554,1590,1610,1722,1770,1785,1794,1806,1830,1870,
          1914,1938,1974].to_seq
  
  @seq.each do |n|
    it "should return 4 for #{n}" do
      n.number_of_distinct_prime_factors.should == 4
     end
  end

  it "should not count factors with multiplicity" do
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
