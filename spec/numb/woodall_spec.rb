describe Integer, "#woodall?" do
  # A003261
  @seq = [1,7,23,63,159,383,895,2047,4607,10239,22527,
          49151,106495,229375,491519,1048575,2228223,
          4718591,9961471,20971519,44040191,92274687,
          192937983,402653183,838860799,1744830463,
          3623878655,7516192767].to_seq

  @seq.sample(5).each do |n|
    it "should return true for Woodall number #{n}" do
      n.should be_woodall
    end
  end

  @seq.invert.sample(5).each do |n|
    it "should return false for non-Woodall number #{n}" do
      n.should_not be_woodall
    end
  end
end
