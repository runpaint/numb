describe Integer, "#core" do
  # A007913
  @seq = [1,2,3,1,5,6,7,2,1,10,11,3,13,14,15,1,17,2,19,5,
          21,22,23,6,1,26,3,7,29,30,31,2,33,34,35,1,37,38,
          39,10,41,42,43,11,5,46,47,3,1,2,51,13,53,6,55,14,
          57,58,59,15,61,62,7,1,65,66,67,17,69,70,71,2,73,
          74,3,19,77]

  @seq.each_with_index do |core, n|
    it "should return #{core} for #{n.succ}" do
      n.succ.core.should == core
    end
  end
end
