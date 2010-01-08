class Integer
  def sublime?
    positive_divisors.size.perfect? and sum_of_divisors.perfect?
  end
end
