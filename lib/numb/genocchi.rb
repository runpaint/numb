# coding: utf-8
class Integer
  def genocchi
    return 1 if self == 1
    return 0 if odd?
    (2 * (1 - 2**self) * bernoulli).to_i
  end
end
