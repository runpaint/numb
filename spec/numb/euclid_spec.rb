describe Integer, "#euclid?" do
  # A006862 
  @seq = [2,3,7,31,211,2311,30031,510511,9699691,223092871,
          6469693231,200560490131,7420738134811,
          304250263527211,13082761331670031,
          614889782588491411,32589158477190044731,
          1922760350154212639071]

  @seq.each do |n|
    it "returns true for Euclid number #{n}" do
      n.should be_euclid
    end
  end

  @seq.to_seq.invert.first(100).each do |n|
    it "returns false for Euclid number #{n}" do
      n.should_not be_euclid
    end
  end
end
