class Integer
  def cyclic?
    return true if zero?
    return false unless digits.size >= 6
    nzd = nonzero_digits.sort
    (1...digits.size).all?{|n| (self * n).nonzero_digits.sort == nzd}
  end

  def nonzero_digits
    digits.reject(&:zero?)
  end
end
