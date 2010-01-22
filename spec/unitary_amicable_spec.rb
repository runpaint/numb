describe Integer, "#unitary_amicable?" do
  # A002952, A002953
  @seq = [114,1140,18018,32130,44772,56430,67158,142310,
          180180,197340,241110,296010,308220,462330,591030,
          669900,671580,785148,815100,1004850,1077890,
          1080150,1156870,1177722,1222650,1281540,1475810,
          1511930,1571388].zip(
         [126,1260,22302,40446,49308,64530,73962,168730,
          223020,286500,242730,429750,365700,548550,618570,
          827700,739620,827652,932100,1241550,1099390,
          1291050,1292570,1241478,1398150,1621500,1669150,
          1598470,1654212])

  @seq.each do |m, n|
    it "should return true for unitary amicable pair (#{m},#{n})" do
      m.unitary_amicable?(n).should be_true
    end

    it "should return true for unitary amicable pair (#{n},#{m})" do
      n.unitary_amicable?(m).should be_true
    end
  
    o, p = n+m, @seq.reject{|pair| pair == [n, m]}.sample.last
    it "should return false for non-unitary amicable pair (#{o},#{p})" do
      o.unitary_amicable?(p).should_not be_true
    end
  end
end
