describe Integer, "#binomial?" do
  # A079299
  @seq = {
    false => [6,14,22,30,38,42,46,62,66,70,78,86,94,102,110,
              114,118,134,138,142,150,154,158,166,174,182,186,
              190,198,206,210,214,222,230,238,246,254,258,262,
              266,270,278,282,286,294,302,310,318,322,326,330,
              334,350,354,358].to_seq
  }
  @seq[true] = (0..5).to_a + @seq[false].invert.to_a


  @seq.each do |key, members|
    members.sample(10).each do |n|
      it "should return #{key} for #{'non-' unless key}binomial number #{n}" do
        n.binomial?.should == key
      end
    end
  end
end
