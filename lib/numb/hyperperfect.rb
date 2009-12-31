# coding: utf-8
class Integer
  def hyperperfect?(k=1)
    raise ArgumentError unless k >= 1
    (1 + (k * (sum_of_divisors - self - 1))) == self
  end
end
