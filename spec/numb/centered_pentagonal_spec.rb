describe Integer, "#centered_pentagonal?" do
 #  A005891
  @seq = [1,6,16,31,51,76,106,141,181,226,276,331,391,456,
          526,601,681,766,856,951,1051,1156,1266,1381,1501,
          1626,1756,1891,2031,2176,2326,2481,2641,2806,2976,
          3151,3331,3516,3706,3901,4101,4306,4516,4731,4951,
          5176,5406]

  @seq.each do |n|
    it "returns true for centered pentagonal #{n}" do
      n.should be_centered_pentagonal
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-centered-pentagonal #{n}" do
      n.should_not be_centered_pentagonal
    end
  end
end
