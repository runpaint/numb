# coding: utf-8
class Integer
  def choose(k)
    k > self ? 0 : factorial / (k.factorial * (self - k).factorial)
  end

  alias :binomial_coefficient :choose
end
