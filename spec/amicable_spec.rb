describe Integer, "#amicable?" do
  # List from Systematic Computations on Amicable Numbers; Alanen, Ore, &
  # Stemple (http://www.jstor.org/pss/2004169)
  AMICABLE = [220,284,1184,1210,2620,2924,5020,5564,6232,6368,
              10744,10856,12285,14595,17296,18416,63020,76084,
              66928,66992,67095,71145,69615,87633,79750,88730,
              100485,124155,122265,139815,122368,123152,141664,
              153176,142310,168730]

  AMICABLE.each_slice(2).each do |n, m|
    it "should return true for amicable pair #{n}, #{m}" do
      n.amicable?(m).should be_true
    end

    it "should return true for amicable pair #{m}, #{n}" do
      m.amicable?(n).should be_true
    end
 
    o = m + 2
    it "should return false for non-amicable pair #{n}, #{o}" do
      n.amicable?(o).should be_false
    end
  end
end
