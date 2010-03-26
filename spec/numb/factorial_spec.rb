# A000142
FACTORIAL = [1,1,2,6,24,120,720,5040,40320,362880,3628800,
             39916800,479001600,6227020800,87178291200,
             1307674368000,20922789888000,355687428096000,
             6402373705728000,121645100408832000,
             2432902008176640000]

describe Integer, "#factorial" do
  FACTORIAL.each_with_index do |factorial, n|
    it "should return #{factorial} for #{n}!" do
      n.factorial.should == factorial
    end
  end
end

describe Integer, "#factorial?" do
  FACTORIAL.first(10).each do |n|
    it "should return true for factorial #{n}" do
      n.should be_factorial
    end
  end

  FACTORIAL.first(10).to_seq.invert.sample(10).each do |n|
    it "should return false for non-factorial #{n}" do
      n.should_not be_factorial
    end
  end
end

describe Integer, "#factorial_of?" do
  FACTORIAL.first(12).each_with_index do |factorial, n|
    next if n.zero?
    it "should return #{n} for #{factorial}" do
      factorial.factorial_of?.should == n
    end
  end

  FACTORIAL.first(10).to_seq.invert.sample(10).each do |n|
    it "should return false for non-factorial #{n}" do
      n.factorial_of?.should be_false
    end
  end
end
