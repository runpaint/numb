class Integer
  def sublime?
    number_of_divisors.perfect? and sum_of_divisors.perfect?
  end
end
