# coding: utf-8
describe Integer, "#number_of_prime_factors" do
  # A001222
  @seq = [0,1,1,2,1,2,1,3,2,2,1,3,1,2,2,4,1,3,1,3,2,2,1,4,
          2,2,3,3,1,3,1,5,2,2,2,4,1,2,2,4,1,3,1,3,3,2,1,5,2,
          3,2,3,1,4,2,4,2,2,1,4,1,2,3,6,2,3,1,3,2,3,1,5,1,2,
          3,3,2,3,1,5,4,2,1,4,2,2,2,4,1,4,2,3,2,2,2,6,1,3,3,
          4,1,3,1,4,3,2,1,5,1,3,2].to_seq

  @seq.each_with_index do |bigomega, n|
    it "should return #{bigomega} for #{n.succ}" do
      n.succ.number_of_prime_factors.should == bigomega
    end
  end

  it "should count factors with multiplicity" do
    [4, 8, 9, 12, 16, 18, 20, 24, 25, 27, 28, 32, 36, 40, 44, 45, 48, 49, 
     50, 52, 54, 56, 60, 63, 64, 68, 72, 75, 76, 80, 81, 84, 88, 90, 92, 
     96, 98, 99, 100, 104, 108, 112, 116, 117, 120, 121, 124, 125, 126, 128,
     132, 135, 136, 140, 144, 147, 148, 150].each do |number|
      number.prime_factors.size.should >= 2
      number.prime_factors.uniq.should_not == number.prime_factors
      number.number_of_prime_factors.should == number.prime_factors.size
     end
  end
end
