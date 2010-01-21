describe Integer, "#wieferich_prime?" do
  # A001220
  @seq = [1093, 3511]

  @seq.each do |n|
    it "should return true for Wieferich-prime #{n}" do
      n.should be_wieferich_prime
    end
  end

  @seq.to_seq.invert.sample(10).each do |n|
    it "should return false for non-Wieferich-prime #{n}" do
      n.should_not be_wieferich_prime
    end
  end
end

