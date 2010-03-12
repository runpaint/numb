describe Integer, "#perrin?" do
  # A001608
  @seq = [3,0,2,3,2,5,5,7,10,12,17,22,29,39,51,68,90,119,
          158,209,277,367,486,644,853,1130,1497,1983,2627,
          3480,4610,6107,8090,10717,14197,18807,24914,33004,
          43721,57918,76725,101639,134643,178364,236282,
          313007]

  @seq.each do |n|
    it "returns true for Perrin number #{n}" do
      n.should be_perrin
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-Perrin number #{n}" do
      n.should_not be_perrin
    end
  end
end
