# coding: utf-8

# A072066
A072066 = [8,16,24,32,48,64,72,80,96,108,112,128,144,160,
           162,176,192,208,216,224,243,256,272,288,304,320,
           324,352,368,384,416,432,448,464,480,486,496,512,
           544,576,592,608,640,648,656,672,688,704,729,736,
           752,768,832,848]

describe Integer, "#exceptional?" do
  A072066.sample(10).each do |n|
    it "returns true for exceptional number #{n}" do
      n.should be_exceptional
    end
  end

  ([*(1..7)] + A072066.to_seq.invert.to_a).sample(10).each do |n|
    it "returns false for ordinary number #{n}" do
      n.should_not be_exceptional
    end
  end
end

describe Integer, "#ordinary?" do
  ([*(1..7)] + A072066.to_seq.invert.to_a).sample(10).each do |n|
    it "returns true for ordinary number #{n}" do
      n.should be_ordinary
    end
  end

  A072066.sample(10).each do |n|
    it "returns false for exceptional number #{n}" do
      n.should_not be_ordinary
    end
  end
end
