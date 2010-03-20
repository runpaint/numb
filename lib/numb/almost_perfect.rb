class Integer
  def almost_perfect?
    return true if self == 1
    proper_divisors.reduce(:+) == self - 1
  end

  alias :least_deficient? :almost_perfect?
end
