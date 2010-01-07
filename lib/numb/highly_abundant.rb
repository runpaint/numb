class Integer
  def highly_abundant?
    return true if self == 1
    sod_n = sum_of_divisors
    (self - 1).downto(1).all?{|m| sod_n > m.sum_of_divisors}
  end
end
