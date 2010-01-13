# coding: utf-8
class Integer
  def coprime?(x)
    gcd(x) == 1
  end
  alias :⊥ :coprime?
  alias :stranger? :coprime?
end

