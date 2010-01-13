# coding: utf-8
class Integer
  def superabundant?
    return true if self == 1
    sod_over_self = Rational(σ, self)
    (self - 1).downto(1).all?{|m| Rational(m.σ, m) < sod_over_self}
  end
end
