# coding: utf-8
class Integer
  def φ
    return 1 if self == 1
    return self - 1 if prime?
    (prime_factors.uniq.map{|f| 1 - Rational(1, f)}.reduce(:*) * self).to_i
    #(1..self).select{|n| n.coprime?(self)}.size
  end

  alias :totient :φ
end
