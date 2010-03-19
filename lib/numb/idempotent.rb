# coding: utf-8
class Integer
  def idempotent(k)
    (k.choose(self) * (self**(k - self))).to_i
  end
end
