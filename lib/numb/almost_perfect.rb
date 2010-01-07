class Integer
  def almost_perfect?
    return true if self == 1
    proper_positive_divisors.reduce(:+) == self - 1
  end
end
