describe Integer, "#fibonacci?" do
  # A000045
  FIBONACCI = [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,
               1597,2584,4181,6765,10946,17711,28657,46368,75025,
               121393,196418,317811,514229,832040,1346269,
               2178309,3524578,5702887,9227465,14930352,24157817,
               39088169].uniq

  FIBONACCI.each do |n|
    it "returns true for Fibonacci number #{n}" do
      n.should be_fibonacci
    end
  end

  ((0..FIBONACCI.last).first(10) - FIBONACCI).each do |n|
    it "returns false for non-Fibonacci number #{n}" do
      n.should_not be_fibonacci
    end
  end
end
