describe Integer, "#centered_square?" do
  # A001844      
  @seq = [1,5,13,25,41,61,85,113,145,181,221,265,313,365,
          421,481,545,613,685,761,841,925,1013,1105,1201,
          1301,1405,1513,1625,1741,1861,1985,2113,2245,2381,
          2521,2665,2813,2965,3121,3281,3445,3613,3785,3961,
          4141,4325]

  @seq.each do |n|
    it "should return true for centered-square number #{n}" do
      n.should be_centered_square
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "should return false for non-centered-square number #{n}" do
      n.should_not be_centered_square
    end
  end
end
