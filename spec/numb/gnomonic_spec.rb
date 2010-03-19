# coding: utf-8
describe Integer, "#gnomonic?" do
  # A005408
  @seq = [1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,
          37,39,41,43,45,47,49,51,53,55,57,59,61,63,65,67,
          69,71,73,75,77,79,81,83,85,87,89,91,93,95,97,99,
          101,103,105,107,109,111,113,115,117,119,121,123,
          125,127,129,131]

  @seq.each do |n|
    it "returns true for gnomonic number #{n}" do
      n.should be_gnomonic
    end
  end

  @seq.to_seq.invert.each do |n|
    it "returns false for non-gnomonic number #{n}" do
      n.should_not be_gnomonic
    end
  end
end