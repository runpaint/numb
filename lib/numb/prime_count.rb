# coding: utf-8
class Integer
  # Algorithm derived from Formulas for pi(n) and the n-th prime by Sebastian
  # Martin Ruiz and Jonathan Sondow [arXiv:math/0210312v2 [math.NT]]

  # Returns the number of primes equal to or less than self
  def π
    x = self
    return 0 if x == 1
    ([2] + (3..x).select(&:odd?)).map do |j|
      1 + ( ((2 - j.τ)/j).floor ).floor
    end.reduce(:+)
  end
  alias :prime_pi :π
  alias :prime_count :π
end
