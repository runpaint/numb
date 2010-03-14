describe Integer, "#centered_hexagonal?" do
  # A003215
  @seq = [1,7,19,37,61,91,127,169,217,271,331,397,469,547,
          631,721,817,919,1027,1141,1261,1387,1519,1657,
          1801,1951,2107,2269,2437,2611,2791,2977,3169,3367,
          3571,3781,3997,4219,4447,4681,4921,5167,5419,5677,
          5941,6211,6487]

  @seq.each do |n|
    it "returns true for centered hexagonal number #{n}" do
      n.should be_centered_hexagonal
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-centered-hexagonal number #{n}" do
      n.should_not be_centered_hexagonal
    end
  end
end
