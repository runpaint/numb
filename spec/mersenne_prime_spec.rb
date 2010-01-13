describe Integer, "#mersenne_prime?" do
  # A000668
  @seq = [3,7,31,127,8191,131071,524287,2147483647,
          2305843009213693951,618970019642690137449562111,
          162259276829213363391578010288127,
          170141183460469231731687303715884105727].to_seq

  @seq.first(6).each do |n|
    it "should return true for Mersenne prime #{n}" do
      n.should be_mersenne_prime
    end
  end

  @seq.invert.first(500).sample(10).each do |n|
    it "should return false for non-Mersenne prime #{n}" do
      n.should_not be_mersenne_prime
    end
  end

  (Prime.first(12).to_a - @seq.to_a).each do |n|
    it "should return false for a prime which isn't Mersenne: #{n}" do
      n.should_not be_mersenne_prime
    end
  end
end

