class Integer
  def balanced_prime?
    return false unless prime? and self >= 5
    primes, before = Prime.each, 2
    primes.each do |prime|
      return ((before + primes.next) / 2) == self if prime == self
      before = prime
    end
  end
end
