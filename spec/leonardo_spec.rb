describe Integer, "#leonardo?" do
  # A001595
  LEONARDO = [1,1,3,5,9,15,25,41,67,109,177,287,465,753,1219,
              1973,3193,5167,8361,13529,21891,35421,57313,92735,
              150049,242785,392835,635621,1028457,1664079,
              2692537,4356617,7049155,11405773,18454929,
              29860703,48315633,78176337].uniq

  LEONARDO.each do |n|
    it "should return true for Leonardo number #{n}" do
      n.should be_leonardo
    end
  end

  20.times.map do
    r = Random.new.rand(1..LEONARDO.last)
    redo if LEONARDO.include? r 
    r
  end.each do |n|
    it "should return false for non-Leonardo number #{n}" do
      n.should_not be_leonardo
    end
  end
end
