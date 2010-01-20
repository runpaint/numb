# coding: utf-8
class Integer
  def nivenmorphic?
    return true if self == 0
    return false unless positive?
    niven? && self.to_s.end_with?(digital_sum.to_s)
  end
  alias :harshadmorphic? :nivenmorphic?
end
