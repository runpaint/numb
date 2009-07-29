class Integer
  def weird?
    return false unless self > 0
    return false if odd? && self < (10 ** 17)
    not semi_perfect? and abundant?
  end
end
