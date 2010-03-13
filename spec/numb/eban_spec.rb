describe Integer, "#eban?" do
  # A006933
  @seq = [2,4,6,30,32,34,36,40,42,44,46,50,52,54,56,60,62,
          64,66,2000,2002,2004,2006,2030,2032,2034,2036,
          2040,2042,2044,2046,2050,2052,2054,2056,2060,2062,
          2064,2066,4000,4002,4004,4006,4030,4032,4034,4036,
          4040,4042,4044,4046,4050,4052,4054,4056]

  @seq.each do |n|
    it "returns true for eban number #{n}" do
      n.should be_eban
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-eban number #{n}" do
      n.should_not be_eban
    end
  end
end
