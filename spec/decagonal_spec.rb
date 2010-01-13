describe Integer, "#decagonal?" do
  # A001107
  @seq = [0,1,10,27,52,85,126,175,232,297,370,451,540,637,
          742,855,976,1105,1242,1387,1540,1701,1870,2047,
          2232,2425,2626,2835,3052,3277,3510,3751,4000,4257,
          4522,4795,5076,5365,5662,5967,6280,6601,6930,7267,
          7612,7965,8326].to_seq

  @seq.each do |n|
    it "returns true for decagonal number #{n}" do
      n.should be_decagonal
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-decagonal number #{n}" do
      n.should_not be_decagonal
    end
  end
end
