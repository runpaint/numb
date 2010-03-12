describe Integer, "#superperfect?" do
  # A019279
  SUPERPERFECT = [2,4,16,64,4096,65536,262144,1073741824,
                  1152921504606846976]

  SUPERPERFECT[0..-2].each do |n|
    it "returns true for superperfect number #{n}" do
      n.should be_superperfect
    end
  end

  [1, 3, 5, 78789,  4097].each do |n|
    it "returns false for non-superperfect number #{n}" do
      n.should_not be_superperfect
    end
  end
end
