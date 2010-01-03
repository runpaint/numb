# coding: utf-8
class Integer
  def weird?
    return false unless self > 0
    return false if odd? && self < (10 ** 17)
    not semiperfect? and abundant?
  end
end
