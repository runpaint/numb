describe Integer, "#parasitic?" do
  # http://www.research.att.com/~njas/sequences/A092697
  PARASITIC = [1,105263157894736842,
               1034482758620689655172413793,102564,
               102040816326530612244897959183673469387755,
               1016949152542372881355932203389830508474576271186440677966,
               1014492753623188405797,1012658227848,
               10112359550561797752808988764044943820224719]

  
  it "returns true for parasitic numbers" do
    PARASITIC.each do |number|
      number.should be_parasitic
    end
  end
  
  PARASITIC.each_with_index do |number,n|
    n += 1
    it "returns true for #{n}-parasitic numbers when #{n} is the argument" do
      number.parasitic?(n).should be_true
    end
  end

  it "returns false for non-parasitic numbers" do
    [2, 8, 105263157894736843].each do |number|
      number.should_not be_parasitic
    end
  end
end
