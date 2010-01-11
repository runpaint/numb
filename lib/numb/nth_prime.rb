# coding: utf-8
class Integer
  # Algorithm derived from Formulas for pi(n) and the n-th prime by Sebastian
  # Martin Ruiz and Jonathan Sondow [arXiv:math/0210312v2 [math.NT]]

  # Returns, after many eons, the nth prime, where n = self
  def nth_prime
    n = self
    return 2 if n == 1
    raise ArgumentError if n < 1
    (2..( 2*n * Math.log(n) + 2).floor).map do |k|
      1 - (k.π.fdiv(n)).floor
    end.reduce(:+) + 2
  end

  alias :prime :nth_prime
end
