describe Integer, "#square_triangular?" do
  # A001110
  @seq = [0,1,36,1225,41616,1413721,48024900,1631432881,
          55420693056,1882672131025,63955431761796,
          2172602007770041,73804512832419600,
          2507180834294496361,85170343853180456676,
          2893284510173841030625]

  @seq.each do |n|
    it "returns true for square triangular number #{n}" do
      n.should be_square_triangular
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-square-triangular number #{n}" do
      n.should_not be_square_triangular
    end
  end
end
