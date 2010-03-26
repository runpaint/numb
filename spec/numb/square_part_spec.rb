# coding: utf-8
describe Integer, "#square_part" do
  # A008833
  @seq = [1,1,1,4,1,1,1,4,9,1,1,4,1,1,1,16,1,9,1,4,1,1,1,4,
          25,1,9,4,1,1,1,16,1,1,1,36,1,1,1,4,1,1,1,4,9,1,1,
          16,49,25,1,4,1,9,1,4,1,1,1,4,1,1,9,64,1,1,1,4,1,1,
          1,36,1,1,25,4,1,1,1,16,81,1,1,4,1,1,1,4,1,9,1,4,1,
          1,1,16,1]

  @seq.to_enum.with_index(1).each do |sp, n|
    it "returns #{sp} as the square part of #{n}" do
      n.square_part.should == sp
    end
  end
end
