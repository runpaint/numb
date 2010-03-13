describe Integer, "#bell?" do
  # A000110
  @seq = [1,1,2,5,15,52,203,877,4140,21147,115975,678570,
          4213597,27644437,190899322,1382958545,10480142147,
          82864869804,682076806159,5832742205057,
          51724158235372,474869816156751,4506715738447323].uniq

  @seq.each do |n|
    it "returns true for Bell number #{n}" do
      n.should be_bell
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-Bell number #{n}" do
      n.should_not be_bell
    end
  end
end
