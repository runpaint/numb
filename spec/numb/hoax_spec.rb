# coding: utf-8
describe Integer, "#hoax?" do
  # A019506 
  @seq = [22,58,84,85,94,136,160,166,202,234,250,265,274,
          308,319,336,346,355,361,364,382,391,424,438,454,
          456,476,483,516,517,526,535,562,627,634,644,645,
          650,654,660,663,690,702,706,732,735,762,778,855,
          860]

  @seq.each do |n|
    it "returns true for hoax number #{n}" do
      n.should be_hoax
    end
  end

  @seq.to_seq.invert.each do |n|
    it "returns false for non-hoax number #{n}" do
      n.should_not be_hoax
    end
  end
end
