# coding: utf-8
class Integer
  def kaprekar?
    return true if self == 1
    sdigits = (self ** 2).digits
    (1..sdigits.size-1).each do |first|
      a = sdigits.first(first).join.to_i
      b = sdigits.last(sdigits.size-first).join.to_i
      next if [a,b].any?{|n| n.zero?}
      return true if (a + b) == self
    end
    false
  end
end
