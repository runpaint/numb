# coding: utf-8
class Integer
  def multiamicable?(m, a, b)
    return false unless m != self and m < self and a.positive? and b.positive?
    m.σ - m == a*self and σ - self == b*m
  end

  def amicable?(other)
    n, m = [self, other].minmax
    m.multiamicable?(n, 1, 1)
  end

  def augmented_amicable?(n)
    m = self
    [m.σ, n.σ].all?{|sigma| sigma == m + n - 1}
  end

  def betrothed?(m)
    σ == m.σ and consecutive?(σ - m)
  end
  
  alias :quasi_amicable? :betrothed?
  alias :reduced_amicable? :betrothed?

  def breeder?(b)
    a = self
    x = (a.σ - a).fdiv(b)
    abx = a + (b*x)
    (abx == a.σ) and (abx == b.σ * (x + 1))
  end

  def unitary_amicable?(n)
    [n + self, sum_of_unitary_divisors].all? do |other|
      other == n.sum_of_unitary_divisors
    end
  end
  
end
