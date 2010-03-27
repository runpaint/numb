# coding: utf-8
class Integer
  # An abundant number is a number n for which σ(n) > 2n. That is, the sum of
  # its divisors exceeds 2n. (See Integer#σ to compute the sum of the divisors
  # of an arbitrary integer).
  #
  # Returns true if the number is abundant; false otherwise. Aliased to
  # Integer#excessive?.
  #
  #     96.abundant?   #=> true
  #     100.abundant?  #=> true
  #     345.abundant?  #=> false
  #
  def abundant?
    return false unless positive?
    σ > (2 * self)
  end

  alias :excessive? :abundant?

  def abundancy
    Rational(σ, self)
  end

  memoize :abundancy

  def friendly?(*others)
    raise ArgumentError unless others.size >= 1 && others.uniq.size == others.size
    abundancy = self.abundancy
    others.all? {|o| o.abundancy == abundancy}
  end

  def highly_abundant?
    return true if self == 1
    (self - 1).downto(1).all?{|m| σ > m.σ }
  end
  
  def primitive_abundant?
    abundant? and proper_divisors.all?(&:deficient?)
  end

  def superabundant?
    return true if self == 1
    # Constraints due to "Abundant Numbers and the Riemann Hypothesis",
    # Briggs, 2006, Experimental Mathematics, vol. 15, no. 2
    ex = primaries.map(&:last)
    return false unless [ex.last, ex.first] == ex.minmax
    primaries[1..-1].all? do |b, e|
      (e - (ex[0] * Math.log(b, primaries[0][0])).floor <= 1) and e < 2**(ex[0] + 2)
    end or return false
    return false unless [4, 36].include?(self) or ex.last == 1
    1.upto(self - 1).all? do |m|
      m.abundancy < abundancy
    end
  end
  memoize :superabundant?
end
