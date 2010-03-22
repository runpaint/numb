# coding: utf-8
class Integer
  # TODO: Consider http://cims.nyu.edu/~harvey/bernmm/
  def bernoulli
    return 1 if zero?
    m = self
    (m.zero? ? 1 : 0) - (0...m).map do |k| 
      m.choose(k) * Rational(k.bernoulli, m - k + 1)
    end.reduce(:+)
  end

  memoize :bernoulli
end
