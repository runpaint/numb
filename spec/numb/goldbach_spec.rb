describe Integer, "#goldbach?" do
  it "returns false for numbers less than or equal to 2" do
    (0..2).each{|n| n.should_not be_goldbach}
  end

  it "returns false for any odd number" do
    prng = Random.new
    100.times do
      n = prng.rand(3..100000001)
      redo if n.even?
      n.should_not be_goldbach
    end
  end

  it "returns true for any even number that is the sum of two primes" do
    prng = Random.new
    100.times do
      n = prng.rand(4..100000001)
      redo if n.odd?
      n.should be_goldbach
    end
  end
end
