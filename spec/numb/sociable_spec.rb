describe Integer, "#sociable?" do
  # A090615
  @seq = {
    4 => [1264460,2115324,2784580,4938136,7169104,18048976,
          18656380,28158165,46722700,81128632,174277820,
          209524210,330003580,498215416,1236402232,
          1799281330,2387776550,2717495235,2879697304,
          3705771825,4424606020],
    5 => [12496],
    # A119478
    6 => [21548919483,90632826380,1771417411016,
          3524434872392,4773123705616],
    8 => [1095447416, 1276254780],
    9 => [805984760],
    28 =>[14316],
  }

  # A000396
  @perfect = [6,28,496,8128,33550336,8589869056,137438691328,
              2305843008139952128,
              2658455991569831744654692615953842176,
              191561942608236107294793378084303638130997321548169216].first(4)
  
  @perfect.sample(2).each do |n|
    it "should return false for 1-sociable (perfect) number #{n}" do
      n.sociable?(1).should be_false
    end
  end

  # A063990
  @amicable = [220,284,1184,1210,2620,2924,5020,5564,6232,6368,
               10744,10856,12285,14595,17296,18416,63020,66928,
               66992,67095,69615,71145,76084,79750,87633,88730,
               100485,122265,122368,123152,124155,139815,141664,
               142310]

  @amicable.sample(2).each do |n|
    it "should return false for 2-sociable (amicable) number #{n}" do
      n.sociable?(2).should be_false
    end
  end

  @seq.each do |t, members|
    next if t >= 6 # Too slow :-(
    members.sample(2).each do |n|
      it "should return true for #{t}-sociable number #{n}" do
        n.sociable?(t).should be_true
      end
    end

    members.to_seq.invert.sample(2).each do |n|
      it "should return false for non-#{t}-sociable number #{n}" do
        n.sociable?(t).should be_false
      end
    end
  end
end
