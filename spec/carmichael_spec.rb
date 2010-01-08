describe Integer, "#carmichael?" do
  # A002997
  CARMICHAEL = [561,1105,1729,2465,2821,6601,8911,10585,15841,
                29341,41041,46657,52633,62745,63973,75361,101101,
                115921,126217,162401,172081,188461,252601,278545,
                294409,314821,334153,340561,399001,410041,449065,
                488881,512461]

  CARMICHAEL.each do |n|
    it "returns true for Carmichael number #{n}" do
      n.should be_carmichael
    end
  end

  ((1..CARMICHAEL.last).first(20) - CARMICHAEL).each do |n| 
    it "returns false for non-Carmichael number #{n}" do
      n.should_not be_carmichael
    end
  end
end
