# coding: utf-8
class Integer
  def noncototient?
    return false if self < 10 or odd?
    (isqrt..(2 * self)).none? do |m|
      m.cototient == self
    end
  end
end
