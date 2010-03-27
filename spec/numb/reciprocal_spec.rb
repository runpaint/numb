# coding: utf-8
describe Integer, "#reciprocal" do
  
  100.times do
    n = rand(10**10)
    redo if n.zero?
    r = Rational(1, n)
    it "returns #{r} as the reciprocal of #{n}" do
      n.reciprocal.should == r
    end
  end

  it "raises a ZeroDivisionError for the reciprocal of zero" do
    ->{ 0.reciprocal }.should raise_error(ZeroDivisionError)
  end
end
