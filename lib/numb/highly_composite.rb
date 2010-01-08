class Integer
  def highly_composite?
    return false if self > 6 and not abundant?
    return true if [1,4,36].include?(self)
    n_divisors = positive_divisors.size
    pdiv = prime_division
    primes = pdiv.map{|a,b| a}
    exponents = pdiv.map{|a,b| b}
    return false unless primes == Prime.first(primes.size) && exponents.last == 1
    return false unless exponents.to_enum.with_index.all? do |e,i|
      e >= (exponents[i+1] or e)
    end
    (self-1).downto(1).none? do |x|
      x.positive_divisors.size >= n_divisors
    end
  end
end
