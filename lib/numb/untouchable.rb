class Integer
  def untouchable?
    # * The first untouchable integer is 2
    # * Perfect numbers are never untouchable because they can be expressed
    #   as the sum of their own proper divisors
    # * If p is prime, the sum of the proper divisors of p**2 is p + 1;
    #   therefore, no untouchable number is one more than a prime.
    return false if self < 2 or perfect? or (self - 1).prime?
    (1..((self - 1)**2)).none? do |m|
      m.sum_of_divisors - m == self
    end
  end
end
