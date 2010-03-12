# coding: utf-8
describe Integer, "#størmer?" do
  # A005528
  @seq = [1,2,4,5,6,9,10,11,12,14,15,16,19,20,22,23,24,25,
          26,27,28,29,33,34,35,36,37,39,40,42,44,45,48,49,
          51,52,53,54,56,58,59,60,61,62,63,64,65,66,67,69,
          71,74,77,78,79,80,81,82,84,85,86,87,88,89,90,92,
          94,95,96]

  @seq.each do |n|
    it "returns true for Størmer number #{n}" do
      n.should be_størmer
    end
  end

  @seq.to_seq.invert.each do |n|
    it "returns false for non-Størmer number #{n}" do
      n.should_not be_størmer
    end
  end
end
