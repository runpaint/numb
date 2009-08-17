# coding: utf-8
class Integer
  def polydivisible?
    return true if self == 1
    return false if digits.first == 0
    1.upto(digits.size).all? do |first|
      (digits.first(first).join.to_i % first) == 0
    end
  end
end
