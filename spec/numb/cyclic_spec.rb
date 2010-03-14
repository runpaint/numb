describe Integer, "#cyclic?" do
  # A004042
  @seq = [0,142857,5882352941176470,526315789473684210,
          4347826086956521739130,
          3448275862068965517241379310,
          2127659574468085106382978723404255319148936170]

  @seq.each do |n|
    it "returns true for cyclic number #{n}" do
      n.should be_cyclic
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-cyclic number #{n}" do
      n.should_not be_cyclic
    end
  end
end
