# coding: utf-8
class Integer
  def φ
    return 1 if self == 1
    return self - 1 if prime?
    (prime_factors.uniq.map{|f| 1 - f.reciprocal}.reduce(:*) * self).to_i
  end

  alias :totient :φ
end
