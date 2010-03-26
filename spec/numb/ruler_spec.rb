# coding: utf-8
describe Integer, "#ruler" do
  # A001511
  @seq = [1,2,1,3,1,2,1,4,1,2,1,3,1,2,1,5,1,2,1,3,1,2,1,4,
          1,2,1,3,1,2,1,6,1,2,1,3,1,2,1,4,1,2,1,3,1,2,1,5,1,
          2,1,3,1,2,1,4,1,2,1,3,1,2,1,7,1,2,1,3,1,2,1,4,1,2,
          1,3,1,2,1,5,1,2,1,3,1,2,1,4,1,2,1,3,1,2,1,6,1,2,1,
          3,1,2,1,4,1]

  @seq.to_enum.with_index(1).each do |r, n|
    it "returns #{r} for the ruller function applied to #{n}" do
      n.ruler.should == r
    end
  end
end
