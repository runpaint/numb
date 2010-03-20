# coding: utf-8
class Integer
  def ménage
    return 1 if zero? # FIXME: Check this
    return 0 unless self > 1
    (0..self).map do |k|
      Rational(2 * self, 2 * self - k) * 
        ((2 * self) - k).choose(k) *
        (self - k).factorial *
        (-1)**k
    end.reduce(:+).to_i
  end

  def ménage?
    (1..self).each do |n|
      m = n.ménage
      next if m < self
      return m == self ? true : false
    end
  end

  alias :menage :ménage
  alias :menage? :ménage?
end
