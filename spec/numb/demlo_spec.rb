describe Integer, "#demlo" do
  # A002477 
  @seq = [1,121,12321,1234321,123454321,12345654321,
          1234567654321,123456787654321,12345678987654321,
          1234567900987654321,123456790120987654321,
          12345679012320987654321,
          1234567901234320987654321]

  @seq.to_enum.with_index(1).each do |demlo, n|
    it "returns #{demlo} for #{n}" do
      n.demlo.should == demlo
    end
  end
end
