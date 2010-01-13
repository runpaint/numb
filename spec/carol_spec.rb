describe Integer, "#carol?" do
  # A093112
  @seq = [-1,7,47,223,959,3967,16127,65023,261119,1046527,
          4190207,16769023,67092479,268402687,1073676287,
          4294836223,17179607039,68718952447,274876858367,
          1099509530623,4398042316799,17592177655807].to_seq

  @seq.each do |n|
    it "returns true for Carol number #{n}" do
      n.should be_carol
    end
  end

  @seq.invert.sample(10).each do |n|
    it "returns false for non-Carol number #{n}" do
      n.should_not be_carol
    end
  end
end
