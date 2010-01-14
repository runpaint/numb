describe Integer, "#poulet?" do
  # A001567
  @seq = [341,561,645,1105,1387,1729,1905,2047,2465,2701,
          2821,3277,4033,4369,4371,4681,5461,6601,7957,8321,
          8481,8911,10261,10585,11305,12801,13741,13747,
          13981,14491,15709,15841,16705,18705,18721,19951,
          23001,23377,25761,29341].to_seq

  @seq.each do |n|
    it "should return true for Poulet number #{n}" do
      n.should be_poulet
    end
  end

  @seq.invert.sample(10).each do |n|
    it "should false true for non-Poulet number #{n}" do
      n.should_not be_poulet
    end
  end
end
