# coding: utf-8
class Integer
  # TODO: Consider http://cims.nyu.edu/~harvey/bernmm/
  def bernoulli
    return -0.5.to_r if self == 1
    return 0.to_r if odd?
    a = []
    0.upto(self) do |m|
      a[m] = Rational(1, m + 1)
      m.downto(1){|j| a[j - 1] = j * (a[j - 1] - a[j])}
    end
    a.first
  end
end
