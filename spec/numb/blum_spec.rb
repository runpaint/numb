describe Integer, "#blum?" do
  # A016105
  @seq = [21,33,57,69,77,93,129,133,141,161,177,201,209,
          213,217,237,249,253,301,309,321,329,341,381,393,
          413,417,437,453,469,473,489,497,501,517,537,553,
          573,581,589,597,633,649,669,681,713,717,721,737,
          749,753,781,789]

  @seq.each do |n|
    it "returns true for Blum integer #{n}" do
      n.should be_blum
    end
  end

  @seq.to_seq.invert.each do |n|
    it "returns false for non-Blum integer #{n}" do
      n.should_not be_blum
    end
  end
end
