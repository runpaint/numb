describe Integer, "#beastly?" do
  # A051003 
  @seq = [666,1666,2666,3666,4666,5666,6660,6661,6662,6663,
          6664,6665,6666,6667,6668,6669,7666,8666,9666,
          10666,11666,12666,13666,14666,15666,16660,16661,
          16662,16663,16664,16665,16666,16667,16668,16669,
          17666,18666]

  @seq.each do |n|
    it "returns true for beastly number #{n}" do
      n.should be_beastly
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-beastly number #{n}" do
      n.should_not be_beastly
    end
  end
end
