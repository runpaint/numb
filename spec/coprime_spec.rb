describe Integer, "#coprime?" do
  # A053674 
  COPRIME = [7,11,11,11,11,13,13,7,17,17,17,11,11,11,7,11,13,
             13,13,13,17,7,11,11,11,11,11,13,7,13,13,13,13,11,
             11,7,11,11,17,13,13,13,7,13,11,11,11,11,11,7,19,
             17,13,13,13,11,7,11,11,11,17,17,19,7,19,13,11,11,
             11,11,7,13]

  COPRIME.each_with_index do |n, i|
    a, b = n, i.succ

    it "should return true for co-prime pair #{a} and #{b}" do
      a.coprime?(b).should be_true
    end

    it "should return false for co-prime pair #{b} and #{a}" do
      b.coprime?(a).should be_true
    end

    c = b * a
    it "should return false for non-co-prime pair #{a} and #{c}" do
      a.coprime?(c).should be_false
    end
  end

  it "should return false if self is equal to the argument" do
    3.coprime?(3).should be_false
  end
end
