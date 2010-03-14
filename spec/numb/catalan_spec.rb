# A000108 
CATALAN = [1,1,2,5,14,42,132,429,1430,4862,16796,58786,
          208012,742900,2674440,9694845,35357670,129644790,
          477638700,1767263190,6564120420,24466267020,
          91482563640,343059613650,1289904147324]

describe Integer, "#catalan?" do
  @seq = CATALAN.uniq

  @seq.each do |n|
    it "returns true for Catalan number #{n}" do
      n.should be_catalan
    end
  end

  @seq.to_seq.invert.sample(100).each do |n|
    it "returns false for non-Catalan number #{n}" do
      n.should_not be_catalan
    end
  end
end

describe Integer, "#catalan" do
  CATALAN.each_with_index do |catalan, n|
    it "returns #{catalan} for #{n}" do
      n.catalan.should == catalan
    end
  end
end
