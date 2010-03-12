describe Integer, "#squared_triangular?" do
  # A000537
  @seq = [0,1,9,36,100,225,441,784,1296,2025,3025,4356,
          6084,8281,11025,14400,18496,23409,29241,36100,
          44100,53361,64009,76176,90000,105625,123201,
          142884,164836,189225,216225,246016,278784,314721,
          354025]

  @seq.each do |n|
    it "returns true for squared triangular number #{n}" do
      n.should be_squared_triangular
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-squared-triangular number #{n}" do
      n.should_not be_squared_triangular
    end
  end
end
