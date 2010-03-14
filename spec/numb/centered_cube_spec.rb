describe Integer, "#centered_cube?" do
  # A005898
  @seq = [1,9,35,91,189,341,559,855,1241,1729,2331,3059,
          3925,4941,6119,7471,9009,10745,12691,14859,17261,
          19909,22815,25991,29449,33201,37259,41635,46341,
          51389,56791,62559,68705,75241,82179,89531,97309,
          105525]

  @seq.each do |n|
    it "returns true for centered cube #{n}" do
      n.should be_centered_cube
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-centered-cube #{n}" do
      n.should_not be_centered_cube
    end
  end
end
