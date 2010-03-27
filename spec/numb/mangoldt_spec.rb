# coding: utf-8
describe Integer, "#mangoldt" do
  # A029833
  @seq = [0,1,1,0,2,0,2,0,0,0,2,0,3,0,0,0,3,0,3,0,0,0,3,0,
          0,0,0,0,3,0,3,0,0,0,0,0,4,0,0,0,4,0,4,0,0,0,4,0,0,
          0,0,0,4,0,0,0,0,0,4,0,4,0,0,0,0,0,4,0,0,0,4,0,4,0,
          0,0,0,0,4,0]

  @seq.to_enum.with_index(1).each do |m, n|
    it "returns a value which rounds to #{m} for #{n}" do
      n.mangoldt.round.should == m
    end
  end
  
  # A029834
  [0,0,1,0,1,0,1,0,0,0,2,0,2,0,0,0,2,0,2,0,0,0,3,0,
   0,0,0,0,3,0,3,0,0,0,0,0,3,0,0,0,3,0,3,0,0,0,3,0,0,
   0,0,0,3,0,0,0,0,0,4,0,4,0,0,0,0,0,4,0,0,0,4,0,4,0,
   0,0,0,0,4,0].to_enum.with_index(1).each do |m, n|
    it "returns a value which has a floor of #{m} for #{n}" do
      n.mangoldt.floor.should == m
    end
  end

  # A029832 
  [0,1,2,0,2,0,2,0,0,0,3,0,3,0,0,0,3,0,3,0,0,0,4,0,
   0,0,0,0,4,0,4,0,0,0,0,0,4,0,0,0,4,0,4,0,0,0,4,0,0,
   0,0,0,4,0,0,0,0,0,5,0,5,0,0,0,0,0,5,0,0,0,5,0,5,0,
   0,0,0,0,5,0].to_enum.with_index(1).each do |m, n|
    it "returns a value which has a ceiling of #{m} for #{n}" do
      n.mangoldt.ceil.should == m
    end
  end
end
