# coding: utf-8
class Integer
  def størmer?
    ((self ** 2) + 1).prime_factors.max >= 2 * self
  end
end
