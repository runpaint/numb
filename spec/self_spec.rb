describe Integer, "#self?" do
  SELF = [1,3,5,7,9,20,31,42,53,64,75,86,97,108,110,121,
          132,143,154,165,176,187,198,209,211,222,233,244,
          255,266,277,288,299,310,312,323,334,345,356,367,
          378,389,400,411,413,424,435,446,457,468,479,490,
          501,512,514,525]

  it "returns true for self numbers" do
    SELF.each do |number|
      number.should be_self
    end
  end

  it "returns false for non-self numbers" do
    ((1..200).to_a - SELF).each do |number|
      number.should_not be_self
    end
  end
end

